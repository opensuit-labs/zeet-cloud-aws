variable "region" {
  type        = string
  description = "The AWS region."
}

variable "aws_account_id" {
  type        = string
  description = "The AWS account ID."
}

variable "cluster_id" {
  type        = string
  description = "The Zeet cluster ID."
}

variable "cluster_name" {
  type        = string
  description = "The name of the cluster."
}

variable "cluster_domain" {
  type        = string
  description = "The domain of the cluster."
}

variable "user_id" {
  type        = string
  description = "The Zeet user ID."
}

variable "enable_nat" {
  type        = bool
  description = "Flag to enable NAT."
}

variable "enable_gpu" {
  type        = bool
  description = "Flag to enable GPU."
}

