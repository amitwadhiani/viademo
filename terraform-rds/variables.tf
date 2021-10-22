variable "region" {
  default     = "us-west-1"
  description = "AWS region"
}

variable "db_password" {
  description = "RDS root user password"
  default     = "root"
  sensitive   = true
}
