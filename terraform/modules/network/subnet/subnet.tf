variable "vpc_map" {}
variable "subnet_list" {}

resource "aws_subnet" "map" {
  for_each   = var.subnet_list
  vpc_id     = var.vpc_map[split(".",each.key)[0]].id
  cidr_block = each.value

  tags = {
    Name = each.key
  }
}

output "subnet_map" {
  value = aws_subnet.map
}

