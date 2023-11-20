variable "ami" {
 description="Amazon Machine Image value"
 default = "ami-057752b3f1d6c4d6c"
}

variable "instance_type"{
   description="Amazon Instance Type"
   default = "t2.micro"
}

variable "key_pair_name"{
   description="Amazon Key Pair Name"
   default = "ashokitkeypair"
}
