output "frontend_instance_ip" {
  value = aws_instance.frontend.public_ip
}

output "store_instance_ip" {
  value = aws_instance.store.public_ip
}
