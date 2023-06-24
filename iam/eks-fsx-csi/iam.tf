variable "cluster_name" {
  type = string
}

variable "iam_name" {
  type    = string
  default = ""
}

variable "k8s_sa_namespace" {
  type    = string
  default = ""
}

variable "k8s_sa_name" {
  type    = string
  default = ""
}

locals {
  role_name        = coalesce(var.iam_name, "${var.cluster_name}-fsx-csi")
  k8s_sa_namespace = coalesce(var.k8s_sa_namespace, "kube-system")
  k8s_sa_name      = coalesce(var.k8s_sa_name, "fsx-csi-controller-sa")
}

data "aws_eks_cluster" "eks" {
  name = var.cluster_name
}

module "iam" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-assumable-role-with-oidc"
  version = "~> 5.21.0"

  create_role = true
  role_name   = coalesce(var.iam_name, "${var.cluster_name}-fsx-csi")

  provider_url = data.aws_eks_cluster.eks.identity.0.oidc.0.issuer
  role_policy_arns = [
    "arn:aws:iam::aws:policy/AmazonFSxFullAccess",
  ]
  oidc_fully_qualified_subjects = ["system:serviceaccount:${local.k8s_sa_namespace}:${local.k8s_sa_name}"]
}

output "iam_name" {
  value = module.iam.iam_role_name
}

output "iam_arn" {
  value = module.iam.iam_role_arn
}

output "k8s_sa_namespace" {
  value = local.k8s_sa_namespace
}

output "k8s_sa_name" {
  value = local.k8s_sa_name
}
