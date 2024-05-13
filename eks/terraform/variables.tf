variable "aws_region" {
  type        = string
  description = "The AWS region."
  default     = "${var.aws_region}"
}

variable "aws_account_id" {
  type        = string
  description = "The AWS account ID."
  default     = "${var.aws_account_id}"
}

variable "zeet_cluster_id" {
  type        = string
  description = "The Zeet cluster ID."
  default     = "${var.zeet_cluster_id}"
}

variable "cluster_name" {
  type        = string
  description = "The name of the cluster."
  default     = "${var.cluster_name}"
}

variable "cluster_version" {
  type        = string
  description = "The version of the cluster."
  default     = "${var.cluster_version}"
}

variable "cluster_domain" {
  type        = string
  description = "The domain of the cluster."
  default     = "${var.cluster_domain}"
}

variable "zeet_user_id" {
  type        = string
  description = "The Zeet user ID."
  default     = "${var.zeet_user_id}"
}

variable "enable_nat" {
  type        = bool
  description = "Flag to enable NAT."
  default     = "${var.enable_nat}"
}

variable "enable_gpu" {
  type        = bool
  description = "Flag to enable GPU."
  default     = "${var.enable_gpu}"
}

