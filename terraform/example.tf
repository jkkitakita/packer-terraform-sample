provider "aws" {
  access_key = "AKIAIF7YCL64HN5VYOTQ"
  secret_key = "87ToAIZtYmJOJyIt/eixTLdNwoIOzi/k3h/MfsMv"
  region     = "ap-northeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-a40fbcc5"
  instance_type = "t2.micro"
  key_name = "jkkitakita"
  tags {
      "Name" = "test.terraform.packer-0${count.index + 1}"
  }
}
