provider "aws" {
  region = "ap-south-1"
  #access_key = "YOUR_ACCESS_KEY"  # Optional: Use IAM roles or environment variables for security
  #secret_key = "YOUR_SECRET_KEY" 
}

resource "aws_instance" "example" {
  ami           = "ami-0e0e417dfa2028266" // you have to provide the actual AMI ID
  instance_type = "t2.micro"
}
