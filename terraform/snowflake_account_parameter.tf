resource "snowflake_account_parameter" "client_encryption_key_size" {
  provider = snowflake.accountadmin
  key      = "CLIENT_ENCRYPTION_KEY_SIZE"
  value    = "256"
}
#
resource "snowflake_account_parameter" "ALLOW_CLIENT_MFA_CACHING" {
  provider = snowflake.accountadmin
  key      = "ALLOW_CLIENT_MFA_CACHING"
  value    = true
}
#