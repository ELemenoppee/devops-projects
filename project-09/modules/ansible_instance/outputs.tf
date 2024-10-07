output "check_public-ip" {
  value = aws_instance.testserver.public_ip
}