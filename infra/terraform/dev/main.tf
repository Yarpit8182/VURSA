#create a random password for rds
resource "random_password" "rds" {
  length  = 20
  special = true
}

#calling a rds module for random password
module "rds" {
  source = "..dev/modules/rds" 
  identifier = "vursa-dev-db"
  db_name    = "vursa"

  username = "dbadmin"
  password = random_password.rds.result

  subnet_ids = module.networking.main.private_subnet_ids
  security_group_ids = [
    module.networking.rds_sg_id
  ]

  environment = "dev"
}
