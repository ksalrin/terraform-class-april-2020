 resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
resource "aws_instance" "web" {
  ami           = "${data.aws_ami.amazon.id}"
  subnet_id     = "${aws_subnet.public1.id}"
  key_name      = "${aws_key_pair.deployer.key_name}"
  iam_instance_profile = "${aws_iam_instance_profile.prometheus_profile.name}"
  vpc_security_group_ids  = ["${aws_security_group.pro_graf_security.id}"]
  instance_type = "t3.micro"

}