resource "aws_instance" "chandu" {
  ami = data.aws_ami.ami_info.id
  vpc_security_group_ids = var.vpc_security_group_ids
  instance_type = var.instance_type
  user_data = file("docker.sh")
  subnet_id = var.subnet_id

  tags = var.tags

root_block_device {
    volume_size = 50
    volume_type = "gp3"
  }
}
