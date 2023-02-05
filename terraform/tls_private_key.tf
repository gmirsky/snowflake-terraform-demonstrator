resource "tls_private_key" "this" {
  algorithm = var.encryption_algorithm
  rsa_bits  = var.rsa_bits
}
#