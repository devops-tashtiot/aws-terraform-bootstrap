output "state_bucket" {
  value = aws_s3_bucket.state.bucket
}

output "aws_region" {
  value = var.aws_region
}
