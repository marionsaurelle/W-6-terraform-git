output "instance_ip" {
  value = aws_lightsail_instance.ls.public_ip_address
}
output "my-arn" {
  value = aws_lightsail_instance.ls.arn
}