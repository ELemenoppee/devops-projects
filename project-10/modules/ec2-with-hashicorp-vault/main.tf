resource "aws_instance" "vault_instance" {
  ami = var.ami_value
  instance_type = var.instance_type_value
  key_name = var.key_name_value
  vpc_security_group_ids = [ var.security_group_value ]

  tags = {
    name = "testserver"
  }

  user_data = <<-EOF
    #!/bin/bash
    sudo apt update
    sudo apt install gpg wget
    wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
    gpg --no-default-keyring --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
    sudo apt update
    sudo apt install vault
    EOF
}