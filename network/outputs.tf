output vpc_cidr {
  value       = aws_vpc.main.id
  
}



output public_subnet_id_1 {
  value       = aws_subnet.public1.id
 
}

output public_subnet_id_2 {
  value       = aws_subnet.public2.id
 
}

output private_subnet_id_1 {
  value       = aws_subnet.private1.id
 
}

output private_subnet_id_2 {
  value       = aws_subnet.private2.id
 
}

output private_subnet_id_3 {
  value       = aws_subnet.private3.id
 
}

output private_subnet_id_4 {
  value       = aws_subnet.private4.id
 
}

output security_group_bastion{
    value = aws_security_group.bastion.id
}
output security_group_application{
    value = aws_security_group.application.id
}

output security_group_rds{
    value = aws_security_group.rds.id
}

output security_group_elastic{
    value = aws_security_group.elasticache.id
}
