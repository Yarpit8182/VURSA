#create a subnet group for RDS
resource "aws_db_subnet_group" "app_db_subnet_group" {
  name       = "${var.identifier}subnet-group"
  subnet_ids = [aws_subnet.frontend.id, aws_subnet.backend.id]

  tags = {
    Name = "${var.identifier}My DB subnet group"
    Environment = var.db_subnet_group_name
  }
}

#create the RDS instance 
resource "aws_db_instance" "app_db" {
  identifier = var.identifier

  engine         = var.engine
  engine_version = var.engine_version
  instance_class = var.instance_class

  allocated_storage = var.allocated_storage
  storage_type      = var.storage_type

  db_name  = var.db_name
  username = var.username
  password = var.password
  port     = 5432

  vpc_security_group_ids = var.vpc_security_group_ids
  db_subnet_group_name   = var.db_subnet_group_name

  multi_az            = true
  publicly_accessible = false

  backup_retention_period = 7
  deletion_protection     = true
  skip_final_snapshot     = false

  tags = {
    Name        = var.identifier
    Environment = var.environment
  }
}
