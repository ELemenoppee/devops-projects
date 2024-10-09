variable "ami_value" {
  description = "this is an AMI Value"
  default = "ami-001f2488b35ca8aad"
}

variable "instance_type_value" {
  description = "This is an instance type value"
  default = "t2.micro"
}

variable "key_name_value" {
  description = "this is a key name value"
  default = "sang-prod-keypair"
}

variable "security_group_value" {
  description = "this is a security group value"
  default = "testsecuritygroups"
}