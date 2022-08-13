resource "aws_instance" "web" {
  ami                         = var.ami_id
  associate_public_ip_address = true
  instance_type               = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = [var.sg_id]

  tags = {
    Name = var.tag_name
  }
}
