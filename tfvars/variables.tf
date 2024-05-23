variable "instance_names" {
    type = map
#     default = {
#         db-dev = "t3.small"
#         backend-dev = "t3.micro"
#         frontend-dev = "t3.micro"
#     }
}

variable "environment" {
#     default = "dev"
}

variable "common_tags" {
    type = map
    default = {
        Project = "Expense"
        Terraform = "true"
    }
}

variable "zone_id" {
    default = "Z0300022NU5KWUM4EAW3"
}

variable "domain_name" {
    default = "shravan.cloud"
}