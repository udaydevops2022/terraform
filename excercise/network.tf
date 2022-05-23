resource "aws_vpc" "ex_vpc" {
    cidr_block = var.nw_vpc_cidr
    tags = {
      Name = "ex_vpc"
    }
}

resource "aws_subnet" "web1" {
    vpc_id = var.nw_vpc_cidr
    cidr_block = var.subnet_cidrs[0]
    availability_zone = var.aws_zone_a
    tags = {
      Name = "web1"
    }
}
resource "aws_subnet" "web2" {
    vpc_id = var.nw_vpc_cidr
    cidr_block = var.subnet_cidrs[1]
    availability_zone = var.aws_zone_b
    tags = {
      Name = "web2"
    }
}
resource "aws_subnet" "app1" {
    vpc_id = var.nw_vpc_cidr
    cidr_block = var.subnet_cidrs[2]
    availability_zone = var.aws_zone_a
    tags = {
      Name = "app1"
    }
}
resource "aws_subnet" "app2" {
    vpc_id = var.nw_vpc_cidr
    cidr_block = var.subnet_cidrs[3]
    availability_zone = var.aws_zone_b
    tags = {
      Name = "app2"
    }
}
resource "aws_subnet" "db1" {
    vpc_id = var.nw_vpc_cidr
    cidr_block = var.subnet_cidrs[4]
    availability_zone = var.aws_zone_a
    tags = {
      Name = "db1"
    }
}
resource "aws_subnet" "db2" {
    vpc_id = var.nw_vpc_cidr
    cidr_block = var.subnet_cidrs[5]
    availability_zone = var.aws_zone_b
    tags = {
      Name = "db2"
    }
}

resource "aws_internet_gateway" "ex_igw" {
    vpc_id = var.nw_vpc_cidr
    tags = {
      Name = "ex_igw"
    }
  
}
resource "aws_s3_bucket" "ex_s3_bucket" {
    bucket = "ex_s3_bucket"
    tags = {
      Name = "ex_s3_bucket"
    }
  
}