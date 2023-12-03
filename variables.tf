
variable "cluster_name" {
  default = "oloch"
}

variable "cluster_version" {
  default = "1.27"
  
}

variable "pubsubnet" {
  default = ["10.3.1.0/24", "10.3.2.0/24", "10.3.3.0/24"]
}

variable "prisubnet" {
  default = ["10.3.4.0/24", "10.3.5.0/24", "10.3.6.0/24"]
}

output "private_subnets" {
  value = module.vpc.private_subnets
}

output "vpc_id" {
  value = module.vpc.vpc_id
}