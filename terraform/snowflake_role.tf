resource "snowflake_role" "dev_database_1_db_rw_role" {
  provider = snowflake.accountadmin
  count    = var.deploy_development == true ? 1 : 0
  name     = upper("dev_${var.database_name}_db_rw_role")
  comment  = "dev_${var.database_name}_db read/write role"
}
#
resource "snowflake_role" "dev_database_1_db_ro_role" {
  provider = snowflake.accountadmin
  count    = var.deploy_development == true ? 1 : 0
  name     = upper("dev_${var.database_name}_db_ro_role")
  comment  = "dev_${var.database_name}_db read only role"
}
#
resource "snowflake_role" "qa_database_1_db_rw_role" {
  provider = snowflake.accountadmin
  count    = var.deploy_qa == true ? 1 : 0
  name     = upper("qa_${var.database_name}_db_rw_role")
  comment  = "qa_${var.database_name}_db read/write role"
}
#
resource "snowflake_role" "qa_database_1_db_ro_role" {
  provider = snowflake.accountadmin
  count    = var.deploy_qa == true ? 1 : 0
  name     = upper("qa_${var.database_name}_db_ro_role")
  comment  = "qa_${var.database_name}_db read only role"
}
#
resource "snowflake_role" "prod_database_1_db_rw_role" {
  provider = snowflake.accountadmin
  count    = var.deploy_production == true ? 1 : 0
  name     = upper("prod_${var.database_name}_db_rw_role")
  comment  = "prod_${var.database_name}_db read/write role"
}
#
resource "snowflake_role" "prod_database_1_db_ro_role" {
  provider = snowflake.accountadmin
  count    = var.deploy_production == true ? 1 : 0
  name     = upper("prod_${var.database_name}_db_ro_role")
  comment  = "prod_${var.database_name}_db read only role"
}
#
resource "snowflake_role" "debug_database_1_db_rw_role" {
  provider = snowflake.accountadmin
  count    = var.deploy_debug == true ? 1 : 0
  name     = upper("debug_${var.database_name}_db_rw_role")
  comment  = "prod_${var.database_name}_db read/write role"
}
#
resource "snowflake_role" "debug_database_1_db_ro_role" {
  provider = snowflake.accountadmin
  count    = var.deploy_debug == true ? 1 : 0
  name     = upper("debug_${var.database_name}_db_ro_role")
  comment  = "debug_${var.database_name}_db read only role"
}
#