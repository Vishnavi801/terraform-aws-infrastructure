output "instance_id" {
  value = aws_instance.terraform_ec2.id
}

output "public_ip" {
  value = aws_instance.terraform_ec2.public_ip
}

output "private_ip" {
  value = aws_instance.terraform_ec2.private_ip
}

output "vpc_id" {
  value = aws_vpc.devops_vpc.id
}
