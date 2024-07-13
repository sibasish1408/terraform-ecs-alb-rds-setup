output "alb_dns_name" {
  description = "The DNS name of the ALB"
  value       = module.alb.dns_name
}

output "db_endpoint" {
  description = "The database endpoint"
  value       = module.db.endpoint
}
