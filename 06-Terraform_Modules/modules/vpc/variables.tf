variable "vpc_cidr" {
  description = "CIDR block for the entire VPC"
  type        = string
}

variable "public_sub_1_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "private_sub_1_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
}