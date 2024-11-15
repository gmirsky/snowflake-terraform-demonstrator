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
output "teraform_path_module" {
  value = path.module
}
#
output "terraform_path_root" {
  value = path.root
}
#
output "terraform_path_cwd" {
  value = path.cwd
}
#
output "snowflake_default_user_password" {
  value       = var.default_user_password
  description = "Default user password for first log in"
  sensitive   = true
}
#
output "dev_database_1_db_id" {
  value       = snowflake_database.dev_database_1_db[0].id
  description = "ID of the DEV database created"
  sensitive   = false
}
#
output "qa_database_1_db_id" {
  value       = snowflake_database.qa_database_1_db[0].id
  description = "ID of the QA database created"
  sensitive   = false
}
#
output "prod_database_1_db_id" {
  value       = snowflake_database.prod_database_1_db[0].id
  description = "ID of the PROD database created"
  sensitive   = false
}
#
output "debug_database_1_db_id" {
  value       = snowflake_database.debug_database_1_db[0].id
  description = "ID of the Debug database created"
  sensitive   = false
}
#
output "dev_database_1_db_name" {
  value       = snowflake_database.dev_database_1_db[0].name
  description = "Name of the DEV database created"
  sensitive   = false
}
#
output "qa_database_1_db_name" {
  value       = snowflake_database.qa_database_1_db[0].name
  description = "Name of the QA database created"
  sensitive   = false
}
#
output "prod_database_1_db_name" {
  value       = snowflake_database.prod_database_1_db[0].name
  description = "Name of the PROD database created"
  sensitive   = false
}
#
output "debug_database_1_db_name" {
  value       = snowflake_database.debug_database_1_db[0].name
  description = "Name of the Debug database created"
  sensitive   = false
}
#
output "dev_database_1_db_wh_id" {
  value       = snowflake_warehouse.dev_database_1_db_wh[0].id
  description = "ID of the DEV database warehouse created"
  sensitive   = false
}
#
output "dev_database_1_db_wh_name" {
  value       = snowflake_warehouse.dev_database_1_db_wh[0].name
  description = "Name of the DEV database warehouse created"
  sensitive   = false
}
#
output "qa_database_1_db_wh_id" {
  value       = snowflake_warehouse.qa_database_1_db_wh[0].id
  description = "ID of the QA database warehouse created"
  sensitive   = false
}
#
output "qa_database_1_db_wh_name" {
  value       = snowflake_warehouse.qa_database_1_db_wh[0].name
  description = "Name of the QA database warehouse created"
  sensitive   = false
}
#
output "prod_database_1_db_wh_id" {
  value       = snowflake_warehouse.prod_database_1_db_wh[0].id
  description = "ID of the PROD database warehouse created"
  sensitive   = false
}
#
output "prod_database_1_db_wh_name" {
  value       = snowflake_warehouse.prod_database_1_db_wh[0].name
  description = "Name of the PROD database warehouse created"
  sensitive   = false
}
#
output "debug_database_1_db_wh_id" {
  value       = snowflake_warehouse.debug_database_1_db_wh[0].id
  description = "ID of the DEBUG database warehouse created"
  sensitive   = false
}
#
output "debug_database_1_db_wh_name" {
  value       = snowflake_warehouse.debug_database_1_db_wh[0].name
  description = "Name of the DEBUG database warehouse created"
  sensitive   = false
}
#
output "dev_user_01_name" {
  value       = snowflake_user.dev_user_01[0].name
  description = "Development user 01 name"
  sensitive   = false
}
#
output "dev_user_01_id" {
  value       = snowflake_user.dev_user_01[0].id
  description = "Development user 01 ID"
  sensitive   = false
}
#
