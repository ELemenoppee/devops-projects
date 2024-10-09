module "vault_sg" {
  source = "./modules/ec2-security-group"
}

module "vault_instance_ec2" {
    source = "./modules/ec2-with-hashicorp-vault"
    instance_type_value = var.instance_type_var
    ami_value = var.ami_var
    key_name_value = var.key_name_var
    security_group_value = module.vault_sg.id
}