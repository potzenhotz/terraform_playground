resource "aws_security_group" "example_machine" {
  name   = "allow-all-sg"
  vpc_id = aws_vpc.example_machine.id
  ingress {
    cidr_blocks = [
      "0.0.0.0/0"
    ]
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
  }
  //terraform removes default group
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "example_machine"
  }
}
