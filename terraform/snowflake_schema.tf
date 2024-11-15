resource "snowflake_schema" "dev_database_1_db_schema_1" {
  provider     = snowflake.sysadmin
  count        = var.deploy_development == true ? 1 : 0
  database     = snowflake_database.dev_database_1_db[0].id
  name         = upper("schema_1")
  comment      = " DEV Database 1 Schema 1"
  is_transient = false
  log_level    = "ERROR" # Valid options are: [TRACE DEBUG INFO WARN ERROR FATAL OFF]. 
}
#
