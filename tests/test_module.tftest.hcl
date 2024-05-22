provider "aws" {
  region = "us-east-1"
}

variables {
  bucket_name = "test-bucket"
}

run "test_bucket_creation" {
  command = "apply"

  assert {
    condition     = aws_s3_bucket.example.bucket == "test-bucket"
    error_message = "Bucket name does not match"
  }
}

