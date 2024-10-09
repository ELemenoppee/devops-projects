output "ec2_public_ip" {
  value = aws_instance.vault_instance.public_ip
}