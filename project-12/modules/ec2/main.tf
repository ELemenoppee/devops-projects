resource "aws_instance" "testserver" {
  ami = var.ami_value
  instance_type = var.instance_type_value
  key_name = var.key_name_value
  security_groups = [ var.security_group_value ]

  connection {
    type = "ssh"
    user = "ubuntu"
    private_key = file("~/.ssh/id_ed25519_prod.aws")
    host = self.public_ip
  }

  provisioner "file" {
    source = "scripts/setup.sh"
    destination = "/tmp/setup.sh"
  }

  provisioner "file" {
    source = "webapp/app.py"
    destination = "/tmp/app.py"
  }

  provisioner "remote-exec" {
    inline = [ 
      "cd /tmp/",
      "chmod +x setup.sh",
      "bash setup.sh"
     ]
  }
}