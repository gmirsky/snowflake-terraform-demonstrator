resource "snowflake_database" "dev_database_1_db" {
  provider                    = snowflake.sysadmin
  count                       = var.deploy_development == true ? 1 : 0
  name                        = upper("dev_${var.database_name}_db")
  comment                     = "dev_${var.database_name}_db database"
  is_transient                = false
  data_retention_time_in_days = 1
}
#
resource "snowflake_database" "qa_database_1_db" {
  provider                    = snowflake.sysadmin
  count                       = var.deploy_qa == true ? 1 : 0
  name                        = upper("qa_${var.database_name}_db")
  comment                     = "qa_${var.database_name}_db database"
  is_transient                = false
  data_retention_time_in_days = 1
}
#
resource "snowflake_database" "prod_database_1_db" {
  provider                    = snowflake.sysadmin
  count                       = var.deploy_production == true ? 1 : 0
  name                        = upper("prod_${var.database_name}_db")
  comment                     = "prod_${var.database_name}_db database"
  is_transient                = false
  data_retention_time_in_days = 1
}
#
resource "snowflake_database" "debug_database_1_db" {
  provider                    = snowflake.sysadmin
  count                       = var.deploy_debug == true ? 1 : 0
  name                        = upper("debug_${var.database_name}_db")
  comment                     = "debug_${var.database_name}_db database"
  is_transient                = false
  data_retention_time_in_days = 1
}
#