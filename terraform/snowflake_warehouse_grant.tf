resource "snowflake_warehouse_grant" "database_1_db_wh_usage" {
  provider       = snowflake.accountadmin
  warehouse_name = snowflake_warehouse.database_1_db_wh.id
  privilege      = upper("usage")
  roles = [
    snowflake_role.database_1_db_rw_role.id,
    snowflake_role.database_1_db_ro_role.id
  ]
}
#
resource "snowflake_warehouse_grant" "database_1_db_wh_operate" {
  provider       = snowflake.accountadmin
  warehouse_name = snowflake_warehouse.database_1_db_wh.id
  privilege      = upper("operate")
  roles = [
    snowflake_role.database_1_db_rw_role.id,
    snowflake_role.database_1_db_ro_role.id
  ]
}
#
resource "snowflake_warehouse_grant" "database_1_db_wh_monitor" {
  provider       = snowflake.accountadmin
  warehouse_name = snowflake_warehouse.database_1_db_wh.id
  privilege      = upper("monitor")
  roles = [
    snowflake_role.database_1_db_rw_role.id,
    snowflake_role.database_1_db_ro_role.id
  ]
}
#
