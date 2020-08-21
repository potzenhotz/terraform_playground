
locals {
  ami_id        = "ami-04cf43aca3e6f3de3"
  region        = "eu-central-1"
  subnet_region = "eu-central-1a"
}

resource "aws_instance" "example_machine" {
  ami                    = local.ami_id
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.example_machine.id}"]
  subnet_id              = aws_subnet.example_machine.id
  tags = {
    Name = "example_machine"
  }
}
