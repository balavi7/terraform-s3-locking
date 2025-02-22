# Terraform-S3-Locking

# Terraform AWS Infrastructure Demo  

This repository contains Terraform configuration files to create a **simple AWS infrastructure** for **demo purposes only**. The setup includes:  
- An **EC2 instance**  
- A **VPC**  
- A **Subnet**  
- A **Security Group**  

## Prerequisites  

Before using this Terraform code, ensure you have the following:  

1. An **AWS Account**  
2. **AWS CLI** installed and configured  
3. **Terraform** installed  
4. An **AWS S3 bucket** (for remote backend storage)  

## Getting Started  

1. **Initialize Terraform**  
   ```sh
   terraform init
2. **Plan the infrastructure**
   ```sh
   terraform plan
3. **Apply the changes**
   ```sh
   terraform apply -auto-approve

Once the demo is completed, destroy the infrastructure to avoid charges

4. **Destroy the changes**
   ```sh
   terraform destroy -auto-approve

## Notes

- This code is for demo purposes only and should not be used in production.
- Modify the terraform varibales as per your AWS environment before deployment.

## License

This project is licensed under the Apache License.

