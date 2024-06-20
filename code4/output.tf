output "instance_ip" {
  value = aws_lightsail_instance.ls.public_ip_address
}

output "instance_ip2" {
  value = aws_lightsail_instance.ls.private_ip_address
}