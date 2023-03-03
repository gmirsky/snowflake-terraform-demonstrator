resource "snowflake_account_parameter" "client_encryption_key_size" {
  provider = accountadmin
  key      = "CLIENT_ENCRYPTION_KEY_SIZE"
  value    = "256"
}
#
resource "snowflake_account_parameter" "ALLOW_CLIENT_MFA_CACHING" {
  provider = accountadmin
  key      = "ALLOW_CLIENT_MFA_CACHING"
  value    = true
}
#