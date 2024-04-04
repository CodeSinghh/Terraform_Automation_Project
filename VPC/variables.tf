variable "vpc_cidr_block" {
  description = "AWS VPC cidr block ip"
  default     = "10.0.0.0/16"  # You may need to adjust this CIDR block based on the requirements of the ap-south-1 region
}

variable "test_vpc_tag" {
  description = "AWS VPC tag name"
  default     = "test-VPC"
}

variable "subnet_cidr_block1" {
  description = "AWS subnet cidr block ip"
  default     = "10.0.0.0/24"
}

variable "subnet_az1" {
  description = "AWS subnet az"
  default     = "ap-south-1a"  # Change to the appropriate availability zone in the ap-south-1 region
}

variable "subnet_cidr_block2" {
  description = "AWS subnet cidr block ip"
  default     = "10.0.1.0/24"
}

variable "subnet_az2" {
  description = "AWS subnet az"
  default     = "ap-south-1b"  # Change to the appropriate availability zone in the ap-south-1 region
}

variable "rt_cidr_block" {
  description = "AWS route cidr block"
  default     = "0.0.0.0/0"
}
