# variables.tf

# Variable to define the AWS region
variable "aws_region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "ap-south-1"  
}

# Variable to define the AMI ID for the EC2 instances
variable "ami_id" {
  description = "The AMI ID for EC2 instances"
  type        = string
  default     = "ami-08048b042dd26bddb"  
}


