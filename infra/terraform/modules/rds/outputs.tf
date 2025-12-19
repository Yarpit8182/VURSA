output "rds_endpoint" {
  description = "RDS endpoint for database connection"
  value       = aws_db_instance.app_db.endpoint
}

# output "rds_port" {
#   description = "RDS port"
#   value       = aws_db_instance.app_db.port
# }

output "rds_db_name" {
  description = "Database name"
  value       = aws_db_instance.app_db.db_name
}

output "rds_username" {
  description = "Database username"
  value       = aws_db_instance.app_db.username
}
