resource "aws_lightsail_instance" "custom" {
  name              = "Dev_server"
  availability_zone = "us-east-1b"
  blueprint_id      = "ubuntu_20_04"
  bundle_id         = "medium_1_0"
  user_data         = "sudo apt-get update && sudo apt-get install -y apache2 && sudo systemctl start apache2 && sudo systemctl enable apache2 && echo '<h1>This is deployed by Saurelle </h1>' | sudo tee /var/www/html/index.html"
}
