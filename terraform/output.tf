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
output "database_database_1" {
  value       = snowflake_database.database_1_db.id
  description = "Name of the database created"
  sensitive   = false
}
#
output "role_database_1_db_rw_role" {
  value       = snowflake_role.database_1_db_rw_role.id
  description = "Name of the role created"
  sensitive   = false
}
#
output "role_database_1_db_ro_role" {
  value       = snowflake_role.database_1_db_ro_role.id
  description = "Name of the role created"
  sensitive   = false
}
#
output "warehouse_dba_wh" {
  value       = snowflake_warehouse.dba_wh.id
  description = "Name of the warehouse created"
  sensitive   = false
}
#
output "database_1_db_wh" {
  value       = snowflake_warehouse.database_1_db_wh.id
  description = "Name of the warehouse created"
  sensitive   = false
}
#
output "resource_monitor_dba_wh_rm" {
  value       = snowflake_resource_monitor.dba_wh_rm.id
  description = "Name of the resource monitor created"
  sensitive   = false
}
#
output "resource_monitor_database_1_db_wh_rm" {
  value       = snowflake_resource_monitor.database_1_db_wh_rm.id
  description = "Name of the resource monitor created"
  sensitive   = false
}
#
