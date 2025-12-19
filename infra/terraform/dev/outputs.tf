#Output rds connection details (rds_password)
output "rds_endpoint" {
  value = module.rds.rds_endpoint
  description = "The database password"
  sensitive = true
}

output "rds_username" {
  value = module.rds.rds_username
}

output "rds_database_name" {
  value = module.rds.rds_database_name
}

#not recomended
output "rds_password" {
  value     = random_password.rds.result
  sensitive = true
}


output "psql_connection_string" {
  value = format(
    "postgresql://%s:%s@%s:%s/%s",
    module.rds.rds_username,
    random_password.rds.result,
    module.rds.rds_endpoint,
    5432,
    module.rds.rds_database_name
  )
  description = "PostgreSQL connection string"

  sensitive = true
}

