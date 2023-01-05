variable "dockerhub_credentials" {
  type = string
}

variable "codestar_connector_credentials" {
  type = string
}

variable "CIDR_VPC" {
  type        = list(string)
  description = "CIDR VPC"
}