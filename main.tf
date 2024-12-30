provider "aws" {
  region = "ap-south-1" 
}

# Create two EC2 instances
resource "aws_instance" "webserver" {
  count         = 2
  ami           = "ami-03c68e52484d7488f"  
  instance_type = "t2.micro"
  key_name      = "my-key"  

  # Security group for the instance
  security_groups = ["default"]  

  tags = {
    Name = "webserver-instance-${count.index + 1}"
  }
}

# Output the public IP addresses of the instances
output "instance_ips" {
  value = aws_instance.webserver.*.public_ip
}
