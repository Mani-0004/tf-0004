# EC2 web server 

resource "aws_instance" "crm-web-server" {
  ami           = ami-0ec1bf4a8f92e7bd1
  instance_type = "t2.micro"
  subnet_id   = aws_subnet.crm-web-sn.id
  key_name = "ravi.pem"
  vpc_security_group_ids= [aws_security_group.crm-web-sg.id]
  user_data = file("setup.sh")
  tags = {
    Name = "crm-web-server"
  }
}
