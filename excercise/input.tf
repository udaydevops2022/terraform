variable "region" {
    type        = string
    default  = "ap-southeast-1"
}
variable "nw_vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
  
}

variable "subnet_cidrs" {
    type = list(string)
    default = "10.0.0.0/24, 10.0.1.0/24, 10.0.2.0/24, 10.0.3.0/24, 10.0.4.0/24, 10.0.5.0/24"
  
}
variable "aws_zone_a" {
    type = string
    default = "ap-southeast-1a"
  
}
variable "aws_zone_b" {
    type = string
    default = "ap-southeast-1b"
  
}
variable "aws_s3_bucket" {
    type = string
    default = "ex_s3_bucket"
  
}