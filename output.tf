output "public" {
    value = aws_instance.my_web.public_ip
  
}

output "s3_bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
  
}