terraform {
  required_version = "~> 1.1.0"

  required_providers {
    aws = {
      version = "4.9.0"
    }
  }
}

provider "aws" {
  allowed_account_ids = [var.aws_account_id]
  region              = var.region
}

data "aws_caller_identity" "current" {}

data "aws_availability_zones" "available" {}

data "aws_eks_cluster" "cluster" {
  name = var.cluster_name
}

data "aws_eks_cluster_auth" "cluster" {
  name = data.aws_eks_cluster.cluster.name
}

resource "aws_eks_addon" "eks_addon_csi" {
  cluster_name             = data.aws_eks_cluster.cluster.name
  service_account_role_arn = module.iam_ebs-csi.this_iam_role_arn
  addon_name               = "aws-ebs-csi-driver"

  resolve_conflicts = "OVERWRITE"
}

resource "aws_ecr_repository" "zeet" {
  name                 = "zeet/${var.cluster_id}"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    ZeetClusterId = var.cluster_id
    ZeetUserId    = var.user_id
  }
}
