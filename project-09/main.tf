provider "aws" {
  region = "ap-southeast-2"
}

module "nginx_server_module" {
  source = "./modules/ansible_instance"
  security_groups_value = "<SECURITY_GROUP_ID>"
}