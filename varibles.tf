variable "region" {
  description = "Define what region will be deployed"
  default     = "us-east-1"
}

variable "profile" {
  description = "Define your AWS profile here"
  default     = ""
}


variable "name" {
  description = "Name of the appliction"
  default     = "server01"

}

variable "env" {
  description = "Environment of the application"
  default     = "prod"

}

variable "ami" {
  description = "AWS AMI to be used"
  default     = "ami-053b0d53c279acc90"

}

variable "instance_type" {
  description = "Define the type of hardware"
  default     = "t2.micro"

}

variable "rep" {
  description = "Respoitory os application"
  default     = "github.com/diego.broetto"

}