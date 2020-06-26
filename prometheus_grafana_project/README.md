Prometheus | Grafana and Prometheus Node installation 


Terraform project - Team 


---Prerequisites---  


Terraform version - 0.11.14 Create VPC with: 3 private subnets 3 public subnets Public subnets attached to IGW. Private subnets attached to NG. Configure Route Tables. Create two separate security groups for Prometheus | Grafana and Node Exporter for appropriate ports. Created instances with Provisioner that installs Prometheus | Grafana on Amazon AMI (t3.mirco) and a Node Exporter on Centos7 AMI (t3.mirco). Creates an IAM role attached to the Prometheus | Grafana to allow permission to utilize Prometheus's Service Discovery for nodes. 

What is Prometheus?
Prometheus is an open-source system monitoring and alerting toolkit originally built at SoundCloud. Please visit for more overview details:

What is Grafana?
Grafana is open source visualization and analytics software. It allows you to query, visualize, alert on, and explore your metrics no matter where they are stored.  Please visit for more details:

How does Prometheus | Grafana work together?
Prometheus collects metric from monitored targets (nodes) by scraping metrics from HTTP endpoints on the targets. Grafana is an interface utilized to take the metrics scraped by Prometheus and present in an interface for analysis and visulization. 

---After Installation Access and Configurations---

You can access Prometheus by entering "Server IP Address":9090. You can check if the target is pulling by accessing Settings > Targets. The target(s) will be listed.  Any new targets (nodes) created will be automatically added to this list with the service discovery. 

You can access Prometheus by entering "Server IP Address":3000. You will need to login in for the first time with Admin and the password Admin. After you log in you will be asked to create a new password, please set to a strong password. 

