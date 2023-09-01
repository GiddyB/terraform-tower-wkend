module "vpc" {
  source = "./module/vpc" 
  name = var.name
  vpc_cidr = var.vpc_cidr
  env = var.name
  az_list = var.az_list
  private_subnets_list = var.private_subnets_list
  public_subnets_list = var.public_subnets_list
  enable_nat_gateway = var.enable_nat_gateway
}

module "ec2" {
  source = "./module/ec2"
  instance_type = var.instance_type
  env = var.env
  subnet_id = module.vpc.public_subnet_ids[0]
}