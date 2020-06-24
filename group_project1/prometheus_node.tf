resource "aws_instance" "node" {
  depends_on = ["aws_instance.web"]
  ami           = "${data.aws_ami.amazon.id}"
  key_name      = "${aws_key_pair.deployer.key_name}"
  iam_instance_profile = "${aws_iam_instance_profile.prometheus_profile.name}"
  subnet_id = "${aws_subnet.public2.id}"
  vpc_security_group_ids  = ["${aws_security_group.pro_node_security.id}"]
  instance_type = "t3.micro"
  provisioner   "remote-exec" {
    connection {
        host        = "${self.public_ip}"
        type        = "ssh"
        user        = "ec2-user"
        private_key = "${file("~/.ssh/id_rsa")}"
    }
    inline = [
      "sudo yum update -y",
      "sudo yum install wget -y",
      # Add users 
      "sudo useradd --no-create-home --shell /bin/false prometheus",
      "sudo mkdir -p /etc/prometheus",
      "sudo mkdir -p /var/lib/prometheus",
      "sudo chown prometheus:prometheus /etc/prometheus",
      "sudo chown prometheus:prometheus /var/lib/prometheus",
      # Installs node exporter 
      "wget https://github.com/prometheus/node_exporter/releases/download/v0.18.1/node_exporter-0.18.1.linux-amd64.tar.gz",
      "tar xvfz node_exporter-0.18.1.linux-amd64.tar.gz",
    ]
  }
   tags = {
    Name = "Node"
  }
}
