variable "deploy_development" {
  type        = bool
  description = "Deploy development environment"
  default     = false
  sensitive   = false
}
#
variable "deploy_qa" {
  type        = bool
  description = "Deploy QA environment"
  default     = false
  sensitive   = false
}
#
variable "deploy_production" {
  type        = bool
  description = "Deploy production environment"
  default     = false
  sensitive   = false
}
#
variable "deploy_debug" {
  type        = bool
  description = "Deploy production debug environment"
  default     = false
  sensitive   = false
}
#
variable "database_name" {
  type        = string
  description = "Database name"
  default     = "database_1"
  sensitive   = false
}
#
variable "rsa_key_file_directory_name" {
  type        = string
  description = "RSA key file directory name"
  default     = "rsa_pem_files"
  sensitive   = false
}
#
variable "encryption_algorithm" {
  type        = string
  description = "Encryption algorithm to be used for public and private keys"
  default     = "RSA"
  sensitive   = false
}
#
variable "rsa_bits" {
  type        = number
  description = "RSA key length"
  default     = 2048
  sensitive   = false
}
#
variable "default_user_password" {
  type        = string
  description = "The default user password for first time log in."
  sensitive   = true
}
