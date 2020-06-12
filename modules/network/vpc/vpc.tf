variable "vpc_list" {}

resource "aws_vpc" "map" {
  for_each = var.vpc_list
  cidr_block = each.value

  tags = {
    Name = each.key
  }
}

output "vpc_map" {
  value = aws_vpc.map
}
