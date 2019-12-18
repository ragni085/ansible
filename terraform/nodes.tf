provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "node1" {
  ami = "ami-099363826f6c9d6b4"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-001fb8d815f619f1c"]
  tags = {
    Name = "Node1"
  }
}


resource "aws_instance" "node2" {
  ami = "ami-099363826f6c9d6b4"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-001fb8d815f619f1c"]
  tags = {
    Name = "Node2"
  }
}

