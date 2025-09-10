variable "project_name" {
    description = "The name of the project."
    type        = string
    default =  "Fiverr_project"
}

variable "region" {
    description = "The AWS region to deploy resources in."
    type        = string
    default     = "us-east-1"
  
}
variable "instance_type" {
    description = "The type of EC2 instance to use."
    type        = string
    default     = "t2.micro"
  
}
variable "ami_id" {
    description = "The AMI ID to use for the EC2 instance."
    type        = string
    default     = "ami-0360c520857e3138f" 
}
variable "key_name" {
    description = "The name of the SSH key pair to use for the EC2 instance."
    type        = string
    default     = "mktest-key" 
    
}
variable "vpc_cidr_block" {
    description = "The CIDR block for the VPC."
    type        = string
    default     ="10.0.0.0/16" 
  
}
variable "subnet_cidr_block" {
    description = "The CIDR block for the subnet."
    type        = string
    default     = "10.0.0.0/24"
  
}
