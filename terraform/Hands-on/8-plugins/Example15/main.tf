resource "aws_instance" "http_ec2" {
    ami = "ami-052c08d70def0ac62"
    instance_type = "t2.micro"
    tags = {Name = "HTTP_SERVER"}
    vpc_security_group_ids = ["sg-d1cb0aae"]
    key_name = "main"

provisioner "file" {
 source = "/vagrant/contents/other-files/basic.sh"
 destination = "/tmp/basic.sh"
 }

provisioner "remote-exec" {
 inline = ["sudo chmod +x /tmp/basic.sh", "sudo /tmp/basic.sh"]
 }

connection {
  host = self.public_ip
  user = var.ssh_user
  private_key = file("/vagrant/contents/other-files/Key-files/main.pem")   
    }
}