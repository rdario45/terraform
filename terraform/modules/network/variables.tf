
variable "vpc_list" {
  description = "vpc definition"
  default = {
    dev = "172.16.0.0/16"
    qa  = "172.17.0.0/16"
  }
}

variable "subnet_list" {
  description = "subnet definition"
  default = {
      "dev.us-east-1a" = "172.16.1.0/24"
      "dev.us-east-1b" = "172.16.2.0/24"
      "qa.us-east-1a"  = "172.17.1.0/24"
      "qa.us-east-1b"  = "172.17.2.0/24"
  }
}

