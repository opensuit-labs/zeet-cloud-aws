variable "region" {
  type = string
}

variable "aws_account_id" {
  type = string
}

variable "cluster_id" {
  type    = string
}

variable "cluster_name" {
  type    = string
}

variable "cluster_domain" {
  type    = string
}

variable "user_id" {
  type    = string
}

variable "cert_manager_namespace" {
  type = string
  default = "cert-manager"
}

variable "external_dns_namespace" {
  type = string
  default = "kube-system"
}