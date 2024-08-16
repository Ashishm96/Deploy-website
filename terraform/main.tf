resource "aws_instance" "frontend" {
  ami           = "ami-04a81a99f5ec58529"
  instance_type = var.frontend_instance_type
  key_name      = aws_key_pair.key_pair.key_name

  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update
              sudo apt-get install -y docker.io
              sudo systemctl start docker
              sudo systemctl enable docker
              sudo usermod -aG docker ubuntu
              # Build and run the Docker container
              sudo docker build -t my-frontend-image /home/ubuntu/frontend
              sudo docker run -d -p 80:80 my-frontend-image
              EOF

  tags = {
    Name = "FrontendInstance"
  }
}

resource "aws_instance" "store" {
  ami           = "ami-04a81a99f5ec58529"
  instance_type = var.store_instance_type
  key_name      = aws_key_pair.key_pair.key_name

  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update
              sudo apt-get install -y docker.io
              sudo systemctl start docker
              sudo systemctl enable docker
              sudo usermod -aG docker ubuntu
              # Build and run the Docker container
              sudo docker build -t my-store-image /home/ubuntu/store-website
              sudo docker run -d -p 3000:3000 my-store-image
              EOF

  tags = {
    Name = "StoreInstance"
  }
}
