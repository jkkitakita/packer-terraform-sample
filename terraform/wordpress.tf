data "aws_ami" "wordpress" {
  filter {
    name = "state"
    values = ["available"]
  }
  filter {
    name = "tag:Release"
    values = ["Latest"] // PackerでAMI作成時につけたタグ
  }
  most_recent = true // 一番新しいものを取得
}

resource "aws_instance" "wordpress" {
  ami           = "${data.aws_ami.wordpress.id}"
  key_name	= "${lookup(var.ec2_config, "key_name")}"
  instance_type = "${lookup(var.ec2_config, "instance_type")}"
  tags {
      "Name" = "${format("wordpress%02d", count.index + 1)}"
  }
}
