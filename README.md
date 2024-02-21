
# S3 bucket and EC2 instance deployment

This project utilizes Terraform to provision an EC2 Instance on AWS  .

## Description
This Terraform project automates the deployment of an Amazon S3 bucket and an EC2 instance on AWS. The S3 bucket is configured with versioning enabled and set up for website hosting, with an index.html object hosted. The EC2 instance is deployed within a specified VPC, along with necessary network configurations like security groups, subnets, and internet gateways.


## Overview
This project utilizes Terraform to provision infrastructure as code on AWS. It streamlines the process of creating an S3 bucket and an EC2 instance while ensuring dependencies are properly managed.
## Prerequisites
- An AWS account with appropriate permissions to create and manage S3 buckets, EC2 instances, and networking resources.
- Terraform installed locally.
## Usage

1. **Initialize the Terraform directory**:

    ```bash
    terraform init
    ```
    ![terraform init]()

2. **Validate Terraform Configuration**:

    ```bash
    terraform validate
    ```
    ![terraform validate]()

3. **Review and Customize Configuration**:
   
Review and modify configurations in respective `.tf` files if necessary.
Run Terraform to plan the infrastructure changes:
If the plan looks satisfactory, apply the changes:

4. **Apply Terraform Changes**:

    ```bash
    terraform apply
    ```

    ![terraform apply-1]()
    ![terraform apply-2]()

   This command will create the specified S3 bucket and if bucket is created successfully then EC2 instance will be created in associated resources on AWS.

5. **Destroy Resources**:

   Once you're done with the resources, it's important to destroy them to avoid unnecessary costs. Use the following command:

    ```bash
    terraform destroy
    ```

    ![terraformm destroy]()

## File Structure

- **`provider.tf`**: Configures the Terraform providers needed for the project.
- **`s3_bucket.tf`**: Defines and configures the Amazon S3 bucket, enabling versioning, setting up website hosting, and specifying the index.html object.
- **`ec2_instance.tf`**: Creates the EC2 instance along with necessary configurations like security groups and instance type.
- **`network.tf`**: Specifies networking configurations including VPC, subnets, internet gateway, and route tables for the EC2 instance.
- **`variables.tf`**: Declares the variables used throughout the Terraform configurations.
- **`terraform.tfvars`**: Assigns values to the variables declared in `variables.tf`.
- **`README.md`**: Documentation providing an overview, installation instructions, usage guidelines, and project structure.

![Logo](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/th5xamgrr6se0x5ro4g6.png)

