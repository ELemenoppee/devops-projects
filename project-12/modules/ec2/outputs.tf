output "instance_public_ip" {
  value = aws_instance.testserver.public_ip
}

output "instance_id" {
  value = aws_instance.testserver.id
}