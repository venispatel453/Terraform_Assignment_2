variable "region_name" {
    type = string
    description = "The AWS region where the resources will be created."
}

variable "instance_name" {
    type = string
    description = "Ec2 instance name"
}

variable "instance_type" {
    type = string
    description = "The type of EC2 instance to be launched."
}

variable "ec2_emi" {
    type = string
    description = "The AMI id for EC2 instance"
}

variable "s3_bucket_name" {
    type = string
    description = "Name of S3 bucket"
}

variable "ec2_vpc_name" {
    type = string
    description = "The VPC name of Ec2 instance"
}

variable "ec2_availability_zone" {
    type = string
    description = "The availability zone of Ec2 instance"
}

variable "vpc_cidr_block" {
    type = string
    description = "CIDR block for VPC"
}

variable "subnet_cidr_block" {
    type = string
    description = "CIDR block for subnet"
}