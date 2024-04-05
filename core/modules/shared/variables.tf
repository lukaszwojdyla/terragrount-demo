variable "vpc_name" {
  type = string
}

variable "vpc_subnets" {
  type = set(string)
}