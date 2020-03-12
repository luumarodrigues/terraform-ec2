variable "hash_commit" {
  default = "806d52dafe9b7fddbc4f0d2d41086ed3cfa02a44"
}

variable "servers" {
  
}

variable "private_key" {
  description = "Path to the SSH private key to be used for authentication"
  default = "key/terraform-lab.pem"
}


variable "instance_type" {
  description = "The type of instance to start"
  default     = "t2.micro"
}
