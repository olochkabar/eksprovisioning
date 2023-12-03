module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.19.1"
  cluster_name = var.cluster_name
  cluster_version = var.cluster_version
  cluster_endpoint_public_access = true
  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
}


module "eks_managed_node_group" {
  source = "terraform-aws-modules/eks/aws//modules/eks-managed-node-group"

  name            = "oloch-eks-mng"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  subnet_ids = module.vpc.private_subnets

  min_size = 1
  max_size = 3
  desired_size = 2
  instance_types = ["t2.micro"]
  }