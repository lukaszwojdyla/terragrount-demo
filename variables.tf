variable "artifactory_name" {
  type = string
}

variable "accounts" {
  type = set(string)
}

variable "vpc_name" {
  type = string
}

variable "vpc_subnets" {
  type = set(string)
}

variable "instance_name" {
  type = string
}

variable "databases" {
  type = set(string)
}