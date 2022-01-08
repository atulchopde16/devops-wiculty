resource "aws_instance" "http_ec2" {
    ami = "ami-052c08d70def0ac62"
    instance_type = "t2.micro"
    tags = {Name = "HTTP_SERVER"}
    vpc_security_group_ids = ["sg-d1cb0aae"]
    key_name = "main"

provisioner "remote-exec" {
   inline = ["sudo yum install httpd -y", "sudo service httpd start", "mkdir -p /tmp/devops"]
}

connection {
  host = self.public_ip
  user = var.login_user
  private_key = file("/vagrant/contents/other-files/Key-files/main.pem")    
    }
}
