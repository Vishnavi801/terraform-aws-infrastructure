# Terraform AWS Infrastructure Project

## Project Overview

This project demonstrates how I used **Terraform** to automate the provisioning of AWS infrastructure using the Infrastructure as Code (IaC) approach.

Instead of manually creating resources through the AWS Management Console, I wrote reusable Terraform configuration files to provision and manage the infrastructure.

The project includes creating a custom VPC, networking components, a security group, and an EC2 instance that automatically installs and hosts an Apache web server using EC2 User Data.

---

## Architecture

The infrastructure created in this project consists of:

- Custom VPC
- Public Subnet
- Internet Gateway
- Route Table
- Route Table Association
- Security Group
- EC2 Instance
- Apache Web Server

Architecture Flow:

```
Internet
    │
    ▼
Internet Gateway
    │
    ▼
Custom VPC
    │
    ▼
Public Subnet
    │
    ▼
Security Group
    │
    ▼
EC2 Instance
    │
    ▼
Apache Web Server
```

---

## Technologies Used

- Terraform
- AWS EC2
- AWS VPC
- Internet Gateway
- Route Tables
- Security Groups
- Amazon Linux 2023
- Apache HTTP Server
- Git
- GitHub

---

## Project Structure

```
terraform-aws-infrastructure/
│
├── provider.tf
├── variables.tf
├── terraform.tfvars
├── vpc.tf
├── subnet.tf
├── internet-gateway.tf
├── route-table.tf
├── security-group.tf
├── ec2.tf
├── outputs.tf
├── README.md
└── .gitignore
```

---

## Resources Provisioned

Using Terraform, I provisioned the following AWS resources:

- Custom VPC
- Public Subnet
- Internet Gateway
- Route Table
- Route Table Association
- Security Group
- EC2 Instance
- Apache Web Server

---

## Terraform Commands Used

Initialize Terraform

```bash
terraform init
```

Format Terraform files

```bash
terraform fmt
```

Validate configuration

```bash
terraform validate
```

Preview infrastructure changes

```bash
terraform plan
```

Provision AWS infrastructure

```bash
terraform apply
```

View outputs

```bash
terraform output
```

List managed resources

```bash
terraform state list
```

Destroy infrastructure

```bash
terraform destroy
```

---

## Web Server Deployment

The EC2 instance uses **User Data** to automatically:

- Update the operating system
- Install Apache HTTP Server
- Start the Apache service
- Enable the service during boot
- Deploy a simple HTML webpage

After deployment, the application is accessible through the EC2 Public IP.

---

## What I Learned

Working on this project helped me gain hands-on experience with:

- Infrastructure as Code (IaC)
- Terraform resource management
- AWS VPC networking
- EC2 provisioning
- Security Groups
- User Data automation
- Terraform state management
- Resource tagging
- Git and GitHub version control

---

## Future Improvements

Some enhancements that can be added in future versions include:

- Remote Terraform State using S3
- DynamoDB State Locking
- Application Load Balancer (ALB)
- Auto Scaling Group
- Multiple Availability Zones
- Terraform Modules
- CI/CD pipeline using GitHub Actions or Jenkins

---

## Project Screenshots

### VPC
![VPC](screenshots/VPC.png)

### Subnet
![Subnet](screenshots/Subnet.png)

### Internet Gateway
![IGW](screenshots/IGW.png)

### EC2 Instance
![EC2](screenshots/EC2-instances.png)

### Apache Web Server
![Apache](screenshots/Apache-webserver.png)


---

## Author

**Lakshmi Vishnavi**

GitHub: https://github.com/Vishnavi801

---

* This project was built as part of my hands-on learning to strengthen my skills in AWS, Terraform, Linux, and Infrastructure Automation.
