variable "ip_vpc" {
  description = "IPv4 CIDR Block of VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_ip" {
  description = "IPv4 Block of subnet public"
  default     = "10.0.1.0/24"

}

variable "private_subnet_ip" {
  description = "IPv4 Block of subnet public"
  default     = "10.0.2.0/24"

}