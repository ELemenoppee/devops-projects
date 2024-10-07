variable "ami_value" {
    description = "ami value"
    default = "ami-001f2488b35ca8aad"
}

variable "instance_type_value" {
    description = "instance type value"
    default = "t2.micro"
}

variable "key_name_value" {
    description = "key name value"
    default = "<KEY_PAIR_NAME>"
}

variable "security_groups_value" {
    description = "security groups value"
    default = ""
}