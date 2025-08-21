variable "key_name" {
  description = "Existing AWS key pair name"
  type        = string
  default     = "akin-aws-keypair"
}

variable "instance_type" {
  default = "t2.micro"
}
