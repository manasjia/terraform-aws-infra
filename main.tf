resource "aws_instance" "my_web" {
    ami           = var.ami_id
    instance_type = var.instance_type
    key_name      = var.key_name
    subnet_id     = aws_subnet.public_subnet.id
    vpc_security_group_ids = [aws_security_group.web_sg.id]
     user_data = <<-EOF
              #!/bin/bash
              apt-get update -y
              apt-get upgrade -y
              apt-get install -y nginx
              systemctl enable nginx
              systemctl start nginx
              echo "<h1>Welcome to Fiverr Demo Project 🚀 (Ubuntu)</h1>" > /var/www/html/index.nginx-debian.html
              EOF
    tags = {
        Name = "${var.project_name}-web-instance"
    }
  
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "manas-demo-fiverr-bucket"



}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.my_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}