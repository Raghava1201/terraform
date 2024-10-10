resource "aws_instance" "terraform" {
  ami             = "ami-0a0e5d9c7acc336f1"  
  instance_type   = "t2.micro" 
  key_name        = "Linux"  # key pair should be in same location
  vpc_security_group_ids = [aws_security_group.main.id]

  provisioner "file" {
    source      = "/home/ubuntu/text.txt"
    destination = "/home/ubuntu/text.txt"
  }

  connection {
    type        = "ssh"
    host        = self.public_ip
    user        = "ubuntu"
    private_key = file("/home/ubuntu/Linux.pem")
    timeout     = "4m"
  }
}

resource "aws_security_group" "main" {
  name        = "terraform-sg"
  description = "Allow SSH and outbound traffic"

  # Inbound rule to allow SSH access
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
  }

  # Outbound rule to allow all traffic
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
  }
}

