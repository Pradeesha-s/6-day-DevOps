provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "web" {
  ami = "ami-01bd9d8f06d29d6a0"
  count = 3
  instance_type = "t2.micro"
  key_name = "Pradeesha-terraform"
  tags = {
    Name = "Pradeesha-terraform-${count.index+1}"
}
}
