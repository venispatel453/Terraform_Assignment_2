resource "aws_instance" "Venis_Instance" {
  ami           = var.ec2_emi
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
  # Dependency on S3 bucket
  depends_on = [aws_s3_bucket.venis_bucket]
}
