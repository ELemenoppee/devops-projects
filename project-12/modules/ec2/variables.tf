variable "ami_value" {
  description = "This is an AMI value"
  default = "ami-001f2488b35ca8aad"
}

variable "instance_type_value" {
    description = "This is an instance type value"
    default = "t2.micro"
}

variable "key_name_value" {
    description = "This is a key name value"
    default = "testkeypair"
}

variable "security_group_value" {
    description = "This is a security group value"
    default = "testsecuritygroup"
}