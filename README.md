
# S3 bucket and EC2 instance deployment

This project utilizes Terraform to provision an EC2 Instance and S3 bucket on AWS  .

## Description
This Terraform project automates the deployment of an Amazon S3 bucket and an EC2 instance on AWS. The S3 bucket is configured with versioning enabled and set up for website hosting, with an index.html object hosted. It will create one Ec2 instance along with that some necessary network configutations like one VPC(virtual private cloud), two subnets, two route tables will be also created.


## Overview
This project utilizes Terraform to provision infrastructure as code on AWS. It streamlines the process of creating an S3 bucket and an EC2 instance while ensuring dependencies are properly managed.
## Prerequisites
- An AWS account with appropriate permissions to create and manage S3 buckets, EC2 instances, and networking resources.
- Terraform installed locally.

# Terraform Version

| Used Terraform Version |
|------------------------|
| 1.3.0                  |

## Usage


1. **Initialize the Terraform directory**:

    ```bash
    terraform init
    ```
    ![terraform init](https://github.com/venispatel453/Terraform_Assignment_2/blob/master/Images/init.png)

2. **Validate Terraform Configuration**:

    ```bash
    terraform validate
    ```
    ![terraform validate](https://github.com/venispatel453/Terraform_Assignment_2/blob/master/Images/validate.png)

3. **Review and Customize Configuration**:
   
Review and modify configurations in respective `.tf` files if necessary.
Run Terraform to plan the infrastructure changes:
If the plan looks satisfactory, apply the changes:

    ![terraform plan](https://github.com/venispatel453/Terraform_Assignment_2/blob/master/Images/plan.png)

4. **Apply Terraform Changes**:

    ```bash
    terraform apply
    ```

    ![terraform apply-1](https://github.com/venispatel453/Terraform_Assignment_2/blob/master/Images/apply-1.png)
    ![terraform apply-2](https://github.com/venispatel453/Terraform_Assignment_2/blob/master/Images/apply-2.png)

   This command will create the specified S3 bucket and if bucket is created successfully then EC2 instance will be created in associated resources on AWS.
   ![s3 bucket created](https://github.com/venispatel453/Terraform_Assignment_2/blob/master/Images/S3_bucket_created.png)
   ![Ec2 instance created](https://github.com/venispatel453/Terraform_Assignment_2/blob/master/Images/instance_created.png)

6. **Destroy Resources**:

   Once you're done with the resources, it's important to destroy them to avoid unnecessary costs. Use the following command:

    ```bash
    terraform destroy
    ```

    ![terraformm destroy](https://github.com/venispatel453/Terraform_Assignment_2/blob/master/Images/destroy.png)

## File Structure

- **`provider.tf`**: Configures the Terraform providers needed for the project.
- **`s3_bucket.tf`**: Defines and configures the Amazon S3 bucket, enabling versioning, setting up website hosting, and specifying the index.html object.
- **`ec2_instance.tf`**: Creates the EC2 instance along with necessary configurations like security groups and instance type.
- **`network.tf`**: Specifies networking configurations including VPC, subnets, internet gateway, and route tables for the EC2 instance.
- **`variables.tf`**: Declares the variables used throughout the Terraform configurations.
- **`terraform.tfvars`**: Assigns values to the variables declared in `variables.tf`.
- **`README.md`**: Documentation providing an overview, installation instructions, usage guidelines, and project structure.


