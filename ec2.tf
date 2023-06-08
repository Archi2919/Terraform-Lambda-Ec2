resource "aws_instance" "myec2" {
  instance_type = "t2.micro"
  user_data     = file("userdata.sh")
  tags = {
    "Name" = "My First Instance"
  }
}
