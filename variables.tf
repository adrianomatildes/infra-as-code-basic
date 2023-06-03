# VPC
variable "cidr_block_vpc" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}
variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames for the VPC"
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  description = "Enable DNS support for the VPC"
  type        = bool
  default     = true
}

# SUBNET PUBLICA
variable "map_public_ip_on_launch" {
  description = "Enable Public IP"
  type        = bool
  default     = true
}
variable "availability_zone_pub" {
  description = "Availability zone for the subnet"
  type        = string
  default     = "us-east-1a"
}

variable "subnet_cidr_block_pub" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

# Subnet Privada

variable "availability_zone_priv" {
  description = "Availability zone for the subnet"
  type        = string
  default     = "us-east-1b"
}

variable "subnet_cidr_block_priv" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.2.0/24"
}

# Route Table
variable "cidr_block" {
  description = "CIDR block for the route table"
  type        = string
  default     = "0.0.0.0/0"
}