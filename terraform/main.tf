resource "aws_security_group" "instance_sg" {
  name_prefix = "instance-sg-"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "instance-sg"
  }
}

resource "aws_instance" "frontend" {
  ami           = "ami-0ae8f15ae66fe8cda"  # Update with a valid AMI ID for your region
  instance_type = var.frontend_instance_type
  key_name      = aws_key_pair.key_pair.key_name
  security_groups = [aws_security_group.instance_sg.name]
  tags = {
    Name = "frontend-instance"
  }

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update
              sudo apt install -y docker.io
              EOF
}

resource "aws_instance" "store" {
  ami           = "ami-0ae8f15ae66fe8cda"  # Update with a valid AMI ID for your region
  instance_type = var.store_instance_type
  key_name      = aws_key_pair.key_pair.key_name
  security_groups = [aws_security_group.instance_sg.name]
  tags = {
    Name = "store-instance"
  }

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update
              sudo apt install -y docker.io
              EOF
}
