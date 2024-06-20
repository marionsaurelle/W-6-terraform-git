resource "aws_lightsail_instance" "ls" {
  name              = "week-5"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_1_0"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>This is my first Terraform project</h1>' | sudo tee /var/www/html/index.html"
}

resource "aws_iam_group" "ct" {
  name = "cloudteam2"

}

resource "aws_iam_user" "ub" {
  name = "u5bt2024"

}