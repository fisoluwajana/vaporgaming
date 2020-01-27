variable "region" {
  description = "AWS Region this to create resources in"
  default     = "eu-west-1"
}

variable "project_name" {
  description = "Common project name for resource prefixes"
  default     = "vaporgaming"
}

variable "environment" {
  description = "Type of environment"
  default     = "prod"
}

variable "cidr_range" {
  description = "IP Range for the environment"
  default     = "10.0.0.0/20"
}

variable "instance_type" {
  description = "Instance type for spot instances"
  default     = "g2.2xlarge"
}

variable "ami_id" {
  description = "AMI ID for spot instances"
  default     = "ami-0375583711467c698"
}

variable "initial_spot_price" {
  description = "Starting spot bid"
  default     = "0.22"
}