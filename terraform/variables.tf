variable "aws_access_key" {
  description = "AWS access key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS secret key"
  type        = string
}

variable "frontend_instance_type" {
  description = "EC2 instance type for the frontend"
  default     = "t2.micro"
}

variable "store_instance_type" {
  description = "EC2 instance type for the store"
  default     = "t2.micro"
}

variable "key_pair_name" {
  description = "Name of the EC2 key pair"
  type        = string
}

variable "ssh_private_key_path" {
  description = "Path to the SSH private key"
  type        = string
  default     = "./terraform/keys/id_rsa"  # Updated path
}

variable "ssh_public_key_path" {
  description = "Path to the SSH public key"
  type        = string
  default     = "./terraform/keys/id_rsa.pub"  # Updated path
}
