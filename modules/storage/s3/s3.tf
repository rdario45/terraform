variable "s3_list" {}

resource "aws_s3_bucket" "map" {
  for_each = var.s3_list
  bucket = each.value
  acl    = "private"

  tags = {
    Name = each.key
  }
}

output "s3_map" {
  value = aws_s3_bucket.map
}
