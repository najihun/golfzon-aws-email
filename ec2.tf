data "aws_ami" "example_ami" {
  owners = ["self"]
  

  filter {
    name = "name"
    values = ["learn-terraform-packer-20230914080351"]
  }
}

resource "aws_instance" "web" {
  ami                         = data.aws_ami.example_ami.id
  instance_type               = "t3.micro"
  subnet_id                   = aws_subnet.subnet_public.id
  associate_public_ip_address = true

  tags = {
    Name = "golfzon-poc"
  }

  count = 3
}

output "public_ip" {
  value = [aws_instance.web.*.public_ip]
}


output "ami_id" {
  value = data.aws_ami.example_ami.image_id
}

output "ami_name" {
    value = data.aws_ami.example_ami.name
}
