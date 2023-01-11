variable "dockerhub_credentials" {
  type = string
  default = "arn:aws:secretsmanager:us-east-1:840021737375:secret:dockerhub/credentials-8KZqOV"
}

variable "codestar_connector_credentials" {
  type = string
  default = "arn:aws:codestar-connections:us-east-1:840021737375:connection/2651c8f9-95c5-4cd5-9972-d46f436b92d4"
}

variable "CIDR_VPC" {
  type        = list(string)
  description = "CIDR VPC"
  default = ["10.0.0.0/16"]
}

variable "docker" {
  type      = map
  description = "Docker Credentials"
  default = {
    username = "pragmauribe"
    password = "S4nt1Ur1b3"
  }
}