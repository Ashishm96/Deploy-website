resource "aws_key_pair" "key_pair" {
  key_name   = "terraform-key"
  public_key = file("${var.ssh_public_key_path}")  # Updated public key path
}

provider "aws" {
  region = "us-east-1"

  assume_role {
    role_arn = "arn:aws:iam::975049958577:role/ecommerce-role"
  }
}
