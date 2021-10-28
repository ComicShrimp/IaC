resource "aws_instance" "server" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name        = var.name
    Environment = var.env
    Provisioner = "Terrform"
    Repo        = var.repo
  }
}
