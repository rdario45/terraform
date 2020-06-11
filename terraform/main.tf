variable "aws_region" {
  default = "us-east-1"
}
variable "aws_profile" {
  default = "devops"
}

# AWS Provider
provider "aws" {
  version = "~> 2.0"
  region  = var.aws_region
  profile = var.aws_profile
}

module "network" {
  source = "./modules/network"
}

module "storage" {
  source = "./modules/storage"
}

output "vpc_map" {
  value       = module.network.vpc_map
  description = "vpc"
}

output "subnet_map" {
  value       = module.network.subnet_map
  description = "subnet"
}

output "s3_map" {
  value       = module.storage.s3_map
  description = "storage"
}
