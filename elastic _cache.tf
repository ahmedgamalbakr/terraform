resource "aws_elasticache_subnet_group" "elasticachesubnetgroup" {
  name       = "elastic-subnet-group1"
  subnet_ids = [module.network.private_subnet_id_3, module.network.private_subnet_id_4]

}


resource "aws_elasticache_cluster" "aws_elasticache_db" {
  cluster_id           = "redisdb"
  engine               = "redis"
  engine_version       = "6.x"
  node_type            = "cache.t4g.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis6.x"
  port                 = 6379
  subnet_group_name    = aws_elasticache_subnet_group.elasticachesubnetgroup.name
  security_group_ids   = [module.network.security_group_elastic]

  tags = {
    Name = "aws_elasticache_db"
  }
}