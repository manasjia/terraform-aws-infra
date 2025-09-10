# terraform-aws-infra

This repository contains a production-ready Terraform project that provisions AWS infrastructure including networking, security groups, and compute resources. It is designed as a showcase project for demonstrating DevOps/SRE expertise on Fiverr and GitHub.

**Features**

✅ Infrastructure as Code using Terraform
✅ Modularized files (networking.tf, security.tf, main.tf)
✅ Deploys an EC2 instance with Nginx web server (Ubuntu)
✅ Creates VPC, subnets, internet gateway, and route tables
✅ Configures Security Groups for controlled access
✅ User-data script installs and configures Nginx automatically
✅ Outputs include EC2 public IP for quick access
**Project Structure**

terraform-aws-infra/
│── README.md                # Documentation
│── provider.tf              # AWS provider configuration
│── networking.tf            # VPC, subnets, route tables
│── security.tf              # Security groups & IAM roles
│── main.tf                  # EC2 + S3 resources
│── variables.tf             # Input variables
│── output.tf                # Outputs (e.g., EC2 public IP)
│── terraform.tfstate*       # Terraform state (ignored in .gitignore)
│── terraform.tfstate.backup # State backup


**Prerequisites**

Terraform >= 1.5

AWS CLI  configured with valid credentials

An AWS account with appropriate IAM permissions

SSH key pair (if you plan to connect via SSH to EC2)

**🚀 How to Use**
1. Clone the repo
git clone git@github.com:manasjia/terraform-aws-infra.git
cd terraform-aws-infra

2. Initialize Terraform
terraform init

3. Validate the configuration
terraform validate

4. Preview the plan
terraform plan

5. Apply changes (provision AWS resources)
terraform apply


Type yes when prompted.

6. Get Outputs

After apply, Terraform will display useful outputs such as:

EC2 Public IP

S3 Bucket Name

You can also run:

terraform output

7. Access Nginx Web Server

Open your browser and visit:

http://<EC2_PUBLIC_IP>


You should see:

Welcome to Fiverr Demo Project 🚀 (Ubuntu)

🧹 Cleanup

To destroy all resources and avoid charges:

terraform destroy

**🔒 Best Practices Followed**

Used .gitignore to exclude sensitive files (*.tfstate, .terraform/)

Variables and outputs are separated for reusability

Infrastructure split into logical files for readability

User-data script handles automated provisioning of EC2 services
**
📌 Future Enhancements**

Add S3 remote backend for Terraform state

Add modules (VPC, EC2, S3) for cleaner reusability

Implement CI/CD pipeline to auto-apply infrastructure changes

Integrate Prometheus + Grafana for monitoring EC2 instance

**👨‍💻 Author**

Manas J
DevOps & SRE Specialist | 17+ Years IT Experience | AWS | Kubernetes | Terraform | CI/CD

💼 Fiverr: manas_jia

🌐 GitHub: manasjia

👉 This project is a live demo of DevOps automation with Terraform.
If you’re looking for cloud automation, CI/CD setup, or infrastructure design, feel free to connect on Fiverr!
