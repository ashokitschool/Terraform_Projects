resource "aws_instance" "linux-vm"{	
	ami = "ami-02e94b011299ef128"
	instance_type = "t2.micro"
	key_name = "ashokitkeypair"
	security_groups = ["default"]
	tags = {
		Name = "AshokIT-Linux-VM"
	}
}