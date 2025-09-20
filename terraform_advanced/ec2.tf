
provider "aws" {
  region = "ap-south-1"
}

variable "instance_type" {}
variable "subnet_id" {}
variable "name_tag" {}

resource "aws_instance" "ubuntu-server" {
  ami           = "ami-03f4878755434977f"
  instance_type = var.instance_type
  key_name      = "ssh_key_ap"
  subnet_id     = var.subnet_id

  tags = {
    Name = var.name_tag
    Env  = terraform.workspace
  }
}
