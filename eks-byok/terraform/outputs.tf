output "region" {
  description = "AWS region."
  value       = var.region
}

output "dns_zone" {
  value = aws_route53_zone.zeet.zone_id
}

output "aws_account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "cluster_id" {
  value = var.cluster_id
}

output "cluster_name" {
  value = var.cluster_name
}

output "cluster_ns_records" {
  value = aws_route53_zone.zeet.name_servers
}
