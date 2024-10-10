resource "aws_instance" "ec2_instance" {

    ami = "ami-0a0e5d9c7acc336f1"  
    instance_type = "t2.micro" 
    tags = {
        Name = "Terraform EC2"
    }

  provisioner "local-exec" {
    command = "touch terraform.txt"
  }
}

