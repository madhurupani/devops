#provider "aws" {
#  region = "us-east-1"
#}

resource "aws_instance" "venu" {
  ami           = "ami-43a15f3e"
  instance_type = "t2.micro"
#  region        = "us-east-1"
  count         = 1
}
