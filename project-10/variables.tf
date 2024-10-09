variable "ami_var" {
  description = "this is an AMI Value"
  default = "ami-001f2488b35ca8aad"
}

variable "instance_type_var" {
  description = "This is an instance type value"
  default = "t2.micro"
}

variable "key_name_var" {
  description = "this is a key name value"
  default = "sang-prod-keypair"
}