resource "snowflake_database_grant" "dev_database_1_db_create_schema" {
  provider               = snowflake.sysadmin
  count                  = var.deploy_development == true ? 1 : 0
  database_name          = snowflake_database.dev_database_1_db[0].id
  enable_multiple_grants = true
  privilege              = upper("create schema")
  with_grant_option      = false
  roles = [
    snowflake_role.dev_database_1_db_rw_role[0].id
  ]
}
#
resource "snowflake_database_grant" "dev_database_1_db_modify" {
  provider               = snowflake.sysadmin
  count                  = var.deploy_development == true ? 1 : 0
  database_name          = snowflake_database.dev_database_1_db[0].id
  enable_multiple_grants = true
  privilege              = upper("modify")
  with_grant_option      = false
  roles = [
    snowflake_role.dev_database_1_db_rw_role[0].id
  ]
}
#
resource "snowflake_database_grant" "dev_database_1_db_monitor" {
  provider               = snowflake.sysadmin
  count                  = var.deploy_development == true ? 1 : 0
  database_name          = snowflake_database.dev_database_1_db[0].id
  enable_multiple_grants = true
  privilege              = upper("monitor")
  with_grant_option      = false
  roles = [
    snowflake_role.dev_database_1_db_rw_role[0].id,
    snowflake_role.dev_database_1_db_ro_role[0].id
  ]
}
#
resource "snowflake_database_grant" "dev_database_1_db_reference_usage" {
  provider               = snowflake.sysadmin
  count                  = var.deploy_development == true ? 1 : 0
  database_name          = snowflake_database.dev_database_1_db[0].id
  enable_multiple_grants = true
  privilege              = upper("reference_usage")
  with_grant_option      = false
  roles = [
    snowflake_role.dev_database_1_db_rw_role[0].id,
    snowflake_role.dev_database_1_db_ro_role[0].id
  ]
}
#
resource "snowflake_database_grant" "dev_database_1_db_usage" {
  provider               = snowflake.sysadmin
  count                  = var.deploy_development == true ? 1 : 0
  database_name          = snowflake_database.dev_database_1_db[0].id
  enable_multiple_grants = true
  privilege              = upper("usage")
  with_grant_option      = false
  roles = [
    snowflake_role.dev_database_1_db_rw_role[0].id,
    snowflake_role.dev_database_1_db_ro_role[0].id
  ]
}
#