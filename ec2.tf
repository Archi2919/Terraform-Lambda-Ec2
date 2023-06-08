resource "aws_instance" "myec2" {
  instance_type = var.instance_type
  user_data     = file("userdata.sh")
  tags = {
    "Name" = "My First Instance"
  }
}
