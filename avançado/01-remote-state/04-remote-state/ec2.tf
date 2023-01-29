resource "aws_instance" "test_instace_ecs_gabriel" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = var.instace_tags
}