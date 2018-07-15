provider "aws" {
  region = "us-east-1"
  access_key = "AKIAISMBGKGD3CJIIFHA"
  secret_key = "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"
}

resource "aws_instance" "madhu" {
  ami           = "ami-43a15f3e"
  instance_type = "t2.micro"
#  region        = "us-east-1"
  count         = 1
}
resource "aws_eip" "ip" {
  instance = "${aws_instance.madhu.id}"
}

