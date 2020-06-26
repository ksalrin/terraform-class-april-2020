# resource "aws_launch_template" "node_test_lt" {
#   depends_on = ["aws_instance.web"]
#   name_prefix   = "node_test"
#   image_id      = "${data.aws_ami.centos7.id}"
#   instance_type = "t3.micro"
#   key_name      = "${aws_key_pair.deployer.key_name}"
#   vpc_security_group_ids  = ["${aws_security_group.pro_node_security.id}"]
#   user_data = "${file("./module/node_exporter.sh")}" 
# }

# resource "aws_autoscaling_group" "node_test_asg" {
#     depends_on = ["aws_instance.web"]
#     availability_zones = [
#     "${var.region}b",
#     "${var.region}c",
#   ]

#   desired_capacity = 3
#   max_size         = 1
#   min_size         = 3

#   mixed_instances_policy {
#     launch_template {
#       launch_template_specification {
#         launch_template_id = "${aws_launch_template.node_test_lt.id}"
#       }
#     }
#   }
# }
