
# resource "aws_instance" "prometheus_node" {
#   ami           = "${data.aws_ami.centos8.id}"
#   subnet_id = "${aws_subnet.private2.id}"
#   key_name     = "${aws_key_pair.deployer.key_name}"
#   security_groups  = ["${aws_security_group.pro_node_security.id}"]
#   instance_type = "t2.micro"
#   count = "2"
#   provisioner "file" {
#     source      = "node_exporter.sh"
#     destination = "/tmp/node_exporter.sh"
#     connection {
#       host        = "${self.public_ip}"
#       type        = "ssh"
#       user        = "centos"
#       private_key = "${file("~/.ssh/id_rsa")}"
#     }
#   }
#     tags = {
#     Name = "prometheus_node"
#     }
# }