resource "aws_instance" "terraform_ec2" {

  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids      = [aws_security_group.terraform_sg.id]
  associate_public_ip_address = true
  key_name                    = var.key_name

  user_data = <<-EOF
#!/bin/bash
dnf update -y
dnf install -y httpd
systemctl enable httpd
systemctl start httpd

echo "<html>
<h1>Terraform AWS Infrastructure Project</h1>
<h2>Created by Vishnavi</h2>
<p>Infrastructure provisioned using Terraform</p>
</html>" > /var/www/html/index.html
EOF

  tags = {
    Name = "${var.project_name}-ec2"
  }
}
