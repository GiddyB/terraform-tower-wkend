variable "name" {
    type = string
  
}

variable "vpc_cidr" {
    type = string
  
}

variable "az_list" {
    type = list 
  
}

variable "private_subnets_list" {
    type = list
  
}

variable "public_subnets_list" {
    type = list 
  
}

variable "enable_nat_gateway" {
  type = bool
}

variable "env" {
    type = string
  
}
