provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "testserver" {
    ami = var.ami_value
    instance_type = var.instance_type_value
    key_name = var.key_name_value
    vpc_security_group_ids = [ var.security_groups_value ]
    associate_public_ip_address  = true

    user_data = <<-EOF
                #!/bin/bash
                sudo apt update -y
                sudo apt install -y software-properties-common
                sudo add-apt-repository --yes --update ppa:ansible/ansible
                sudo apt install -y ansible
                
                # Start Nginx (Optional if you want it as well)
                sudo systemctl start nginx
                sudo systemctl enable nginx
                EOF
  }