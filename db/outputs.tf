output "endpoint" {
  description = "The database endpoint"
  value       = aws_db_instance.main.endpoint
}
