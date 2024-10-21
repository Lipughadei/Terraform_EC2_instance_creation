provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0e0e417dfa2028266" // you have to provide the actual AMI ID
  instance_type = "t2.micro"
}
