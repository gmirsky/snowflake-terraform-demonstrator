resource "snowflake_database" "database_1_db" {
  provider                    = snowflake.sysadmin
  name                        = upper("database_1_db")
  comment                     = "database_1 database"
  is_transient                = false
  data_retention_time_in_days = 1
}
#
