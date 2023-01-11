# Resource: aws_secretsmanager_secret
# Provides a resource to manage AWS Secrets Manager secret metadata
resource "aws_secretsmanager_secret" "secret" {
  name = "dockerhub-credentials"
}

# Provides a resource to manage AWS Secrets Manager secret version including its secret value
resource "aws_secretsmanager_secret_version" "password" {
  secret_id     = aws_secretsmanager_secret.secret.id
  secret_string = jsonencode(var.docker)
}

# Retrieve metadata information about a Secrets Manager secret
data "aws_secretsmanager_secret" "secret" {
  depends_on = [aws_secretsmanager_secret.secret]
  name       = "dockerhub-credentials"
}

# Retrieve information about a Secrets Manager secret version, including its secret value
data "aws_secretsmanager_secret_version" "password" {
  secret_id = data.aws_secretsmanager_secret.secret.id
}