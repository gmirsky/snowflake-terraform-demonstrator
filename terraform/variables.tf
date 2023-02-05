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