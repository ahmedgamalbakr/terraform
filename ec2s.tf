resource "aws_instance" "bastion" {
  ami           = var.AMI_ID
  instance_type = var.INSTANCE_TYPE
  key_name      = aws_key_pair.tf-key.id

  vpc_security_group_ids = [module.network.security_group_bastion]
  subnet_id              = module.network.public_subnet_id_1

  provisioner "local-exec" {
    command = "echo ${self.public_ip} > IPsfile"
  }

  user_data = <<-EOF
              #!/bin/bash
              echo '${tls_private_key.rsa-key.private_key_pem}' > /home/ec2-user/tf-key.pem
              chmod 400 /home/ec2-user/tf_key.pem
              EOF

  tags = {
    Name = "Bastion"
  }
}



resource "aws_instance" "application" {
  ami           = var.AMI_ID
  instance_type = var.INSTANCE_TYPE
  key_name      = aws_key_pair.tf-key.id

  vpc_security_group_ids = [module.network.security_group_application]
  subnet_id              = module.network.private_subnet_id_2

  tags = {
    Name = "application"
  }
}

