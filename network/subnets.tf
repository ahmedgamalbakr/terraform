resource "aws_subnet" "public1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.PUBLIC_SUBNET1
  map_public_ip_on_launch = "true"
  availability_zone       = var.AZ_1

}

resource "aws_subnet" "public2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.PUBLIC_SUBNET2
  map_public_ip_on_launch = "true"
  availability_zone       = var.AZ_2
}


resource "aws_subnet" "private1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.PRIVATE_SUBNET1
  availability_zone = var.AZ_1

}


resource "aws_subnet" "private2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.PRIVATE_SUBNET2
  availability_zone = var.AZ_2

}

resource "aws_subnet" "private3" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.PRIVATE_SUBNET3
  availability_zone = var.AZ_1

}

resource "aws_subnet" "private4" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.PRIVATE_SUBNET4
  availability_zone = var.AZ_2

}