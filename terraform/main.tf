provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "Jenkins-server" {
    ami = "ami-018ba43095ff50d08"
    instance_type = "t2.micro"
    key_name = "git"
    security_groups = ["default"]
    user_data = file("jenkins-script.sh")
    tags = {
      Name = "Jenkins-server"
    }
  
}

resource "aws_instance" "Docker-server" {
    ami = "ami-018ba43095ff50d08"
    instance_type = "t2.micro"
    key_name = "git"
    security_groups = ["default"]
    user_data = file("Docker-script.sh")
    tags = {
      Name = "Docker-server"
    }
  
}

