resource "snowflake_role" "database_1_db_rw_role" {
  provider = snowflake.accountadmin
  name     = upper("database_1_db_rw_role")
  comment  = "database_1_db read/write role"
}
#
resource "snowflake_role" "database_1_db_ro_role" {
  provider = snowflake.accountadmin
  name     = upper("database_1_db_ro_role")
  comment  = "database_1_db read only role"
}
#
