resource "aws_s3_bucket" "venis_bucket" {
  bucket = var.s3_bucket_name
}

# Enabling versioning of S3 bucket 
resource "aws_s3_bucket_versioning" "name" {
  bucket = aws_s3_bucket.venis_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_kms_key" "s3_key" {
  description = "KMS key for S3 server side encryption"
  deletion_window_in_days = 10
}

# S3 website configuration and handling of 404 error 
resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.venis_bucket.id
  index_document {
    suffix = "index.html"
  }
  error_document {
    key="error.html"
  }
    routing_rule {
    condition {
      http_error_code_returned_equals = 404
    }
    redirect {
      host_name = "www.error.com"
      replace_key_with = "error.html"
      http_redirect_code = "302"
      protocol = "https"
    }
  }
}

# Uploading a file on S3 bucket
resource "aws_s3_object" "file_upload" {
  bucket = aws_s3_bucket.venis_bucket.id 
  key = "index.html"  
  source = "index.html"
}