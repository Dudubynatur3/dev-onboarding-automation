resource "aws_security_group" "ssh_access" {
  name        = "ssh_access"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "dev_onboarding" {
  ami                         = "ami-0c02fb55956c7d316"  # Ubuntu 22.04 LTS
  instance_type               = var.instance_type
  key_name                    = var.key_name
  security_groups             = [aws_security_group.ssh_access.name]
  associate_public_ip_address = true

  user_data = file("${path.module}/scripts/temp_repo/bootstrap.sh")


  tags = {
    Name = "Dev-Onboarding-EC2"
  }
}
