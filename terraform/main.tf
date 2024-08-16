

# EC2 instance for frontend
resource "aws_instance" "frontend" {
  ami           = "ami-04a81a99f5ec58529"  # Replace with your AMI
  instance_type = "t2.micro"
  tags = {
    Name = "FrontendInstance"
  }
}

# EC2 instance for store
resource "aws_instance" "store" {
  ami           = "ami-04a81a99f5ec58529"  # Replace with your AMI
  instance_type = "t2.micro"
  tags = {
    Name = "StoreInstance"
  }
}
