resource "aws_db_subnet_group" "rds-subnet-group" {
  name       = "my-rds-subnet-group"
  subnet_ids = [module.network.private_subnet_id_1, module.network.private_subnet_id_2]
}

resource "aws_db_instance" "rds-mysql" {
  allocated_storage      = 10
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "db.t2.micro"
  db_name                = "mysqldb"
  username               = var.db_username
  password               = var.db_password
  parameter_group_name   = "default.mysql5.7"
  vpc_security_group_ids = [module.network.security_group_rds]
  db_subnet_group_name   = aws_db_subnet_group.rds-subnet-group.name
  skip_final_snapshot    = true

  tags = {
    Name = "RDS"
  }
}