data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["IaaSWeek-${var.hash_commit}"]
  }

  owners = ["777015859311"] # Gomex ID, não mude sem mudar o filtro
}

resource "aws_instance" "web" {
  count         = var.servers //numero de instancias a serem criadas
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name      = "terraform-lab"
  vpc_security_group_ids = ["${aws_security_group.allow_ssh.id}"]
  provisioner "remote-exec"{ //usado para executar comando dentro da maquina criada e determina o tipo de conexão
      inline = [
          "touch /tmp/teste"
      ]
    connection {
        type = "ssh"
        user = "ubuntu"
        host = self.public_ip
        private_key = file(var.private_key)
    }
  }

  tags = {
    Name = "Terraform-lab"
  }
}