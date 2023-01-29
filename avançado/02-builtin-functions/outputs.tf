output "instance_public_ips" {
  value = aws_instance.server.*.public_ip
}

output "instace_names" {
  value = join(", ", aws_instance.server.*.tags.Name)
}
