data "aws_ami" "amz_linux_2" {
  most_recent = true
  name_regex  = "amzn2-ami-hvm-2.*.1-x86_64-gp2"
  owners      = ["amazon"]
}

resource "aws_instance" "web_instance" {
  ami           = data.aws_ami.amz_linux_2.id
  instance_type = "t2.micro"

  subnet_id                   = var.public_subnet_id
  vpc_security_group_ids      = [var.public_sg_id]
  associate_public_ip_address = true

  user_data = <<-EOF
  #!/bin/bash -ex

  amazon-linux-extras install nginx1 -y
  echo "<h1>$(curl https://api.kanye.rest)</h1>" >  /usr/share/nginx/html/index.html 
  systemctl enable nginx
  systemctl start nginx
  EOF

  tags = {
    "Name" : "Ashok IT - Server"
  }
}