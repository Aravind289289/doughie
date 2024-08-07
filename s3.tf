resource "aws_s3_bucket" "static_assets" {
  bucket = var.bucket_name
  acl    = "public-read"
}

resource "aws_s3_bucket_object" "static_assets" {
  for_each = fileset("frontend/", "**/*")
  bucket   = aws_s3_bucket.static_assets.id
  key      = each.value
  source   = each.value
  acl      = "public-read"
}
