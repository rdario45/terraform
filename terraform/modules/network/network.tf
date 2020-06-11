
module "vpc" {
  source = "./vpc"
  vpc_list = var.vpc_list
}

module "subnet" {
  source = "./subnet"
  vpc_map = module.vpc.vpc_map
  subnet_list = var.subnet_list
}
