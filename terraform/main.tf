resource "aws_s3_account_public_access_block" "block_all_public" {
  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls  = true
  restrict_public_buckets  = true
}

resource "aws_s3_bucket" "this1" {
  bucket = "my-example-bucket-12390"

  tags = {
    Name        = "my-example-bucket-qa9338"
    Environment = "dev"
  }
}
