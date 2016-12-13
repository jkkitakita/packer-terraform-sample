variable "region" {
  default = "ap-northeast-1"
}

variable "ec2_config" {
  default = {
    key_name		= "jkkitakita"
    instance_type	= "t2.micro"
  }
}

