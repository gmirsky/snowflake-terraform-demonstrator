output "snowflake_current_account" {
  value       = data.snowflake_current_account.this.account == null ? "Null value returned" : data.snowflake_current_account.this.account
  description = "Snowflake current account"
  sensitive   = false
}
#
output "snowflake_current_region" {
  value       = data.snowflake_current_account.this.region == null ? "Null value returned" : data.snowflake_current_account.this.region
  description = "Snowflake current region"
  sensitive   = false
}
#
output "snowflake_current_url" {
  value       = data.snowflake_current_account.this.url == null ? "Null value returned" : data.snowflake_current_account.this.url
  description = "Snowflake current URL"
  sensitive   = false
}
#
