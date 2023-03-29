variable "region" {
  type        = string
  default     = "ap-south-1"
  description = "mumbai region"
}

variable "vpc" {
  type        = string
  default     = "192.168.0.0/16"
  description = "VPC CIDR Range"
}

variable "subnet_cidrs" {
  type        = list(string)
  default     = ["192.168.0.0/24", "192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24", "192.168.4.0/24", "192.168.5.0/24"]
  description = "subnets Ranges"
}

variable "subnet_azs" {
  type        = list(string)
  default     = ["a", "b", "c", "a", "b", "c"]
  description = "subnet availability zones"
}

variable "subnet_names" {
  type    = list(string)
  default = ["app1", "app2", "db1", "db2", "web1", "web2"]

}



