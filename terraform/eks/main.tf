module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  vpc_id          = var.vpc_id
  subnet_ids      = var.subnet_ids

  node_group_defaults = {
    instance_types = ["t3.medium"]
    desired_size   = var.desired_node_count
    max_size       = 5
    min_size       = 1
  }

  tags = {
    Environment = var.environment
    Project     = "CodeBrewery"
  }
}
