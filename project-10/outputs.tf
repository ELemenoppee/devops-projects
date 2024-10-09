output "vault_public_ip" {
  value = module.vault_instance_ec2.ec2_public_ip
}

output "vault_url" {
  value = "http://${module.vault_instance_ec2.ec2_public_ip}:8200"
}