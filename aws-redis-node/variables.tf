variable "project" {
  type = "string"
}

variable "env" {
  type = "string"
}

variable "owner" {
  type = "string"
}

variable "subnets" {
  type = "list"
}

variable "availability_zone" {
  type = "string"
}

variable "ingress_security_group_ids" {
  type = "list"
}

variable "service" {
  default = "redis"
}

variable "port" {
  type    = "string"
  default = "6379"
}

variable "instance_type" {
  default = "cache.m4.large"
}

variable "parameter_group_name" {
  default = "default.redis3.2"
}

variable "engine_version" {
  default = "4.0.10"
}

variable "apply_immediately" {
  default = true
}

# This is to get a around a limitation where the elasticache cluster id can be
# only 20 characters long. Use it only if you get that error.
variable "resource_name" {
  description = "If not set, name will be ${var.project}-${var.env}-${var.name}."
  type        = "string"
  default     = ""
}
