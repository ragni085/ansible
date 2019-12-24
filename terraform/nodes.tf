provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "node1" {
  ami = "ami-0c964351b41095ff7"
  instance_type = "t2.micro"
  key_name = "devops"
  vpc_security_group_ids = ["sg-0255375ce75e2cc8d"]
  tags = {
    Name = "Node1"
  }
}


//resource "aws_instance" "node2" {
  //ami = "ami-0c98a6bf9be7285b5"
  //instance_type = "t2.micro"
  //key_name = "devops"
  //vpc_security_group_ids = ["sg-0255375ce75e2cc8d"]
  //tags = {
    //Name = "Node2"
  //}
//}

resource "local_file" "inventory" {
  filename = "/tmp/hosts"
  content  = "${aws_instance.node1.public_ip}\n"
}

