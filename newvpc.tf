module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  name = "olochvpc"
  cidr = "10.3.0.0/16"
  azs = data.aws_availability_zones.available.names
  public_subnets = var.pubsubnet
  private_subnets = var.prisubnet
  enable_nat_gateway = true
  enable_vpn_gateway = true
  single_nat_gateway = true
}