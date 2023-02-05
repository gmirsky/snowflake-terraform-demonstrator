resource "local_file" "private_pem" {
  filename = "${var.rsa_key_file_directory_name}/this_private.pem"
  content  = chomp(tls_private_key.this.private_key_pem)
}
#
resource "local_file" "public_pem" {
  filename = "${var.rsa_key_file_directory_name}/this_public.pem"
  content  = chomp(tls_private_key.this.public_key_pem)
}
#