resource "snowflake_warehouse_grant" "dev_database_1_db_wh_usage" {
  provider       = snowflake.accountadmin
  count          = var.deploy_development == true ? 1 : 0
  warehouse_name = snowflake_warehouse.dev_database_1_db_wh[0].id
  privilege      = upper("usage")
  roles = [
    snowflake_role.dev_database_1_db_rw_role[0].id,
    snowflake_role.dev_database_1_db_ro_role[0].id
  ]
}
#
resource "snowflake_warehouse_grant" "dev_database_1_db_wh_operate" {
  provider       = snowflake.accountadmin
  count          = var.deploy_development == true ? 1 : 0
  warehouse_name = snowflake_warehouse.dev_database_1_db_wh[0].id
  privilege      = upper("operate")
  roles = [
    snowflake_role.dev_database_1_db_rw_role[0].id,
    snowflake_role.dev_database_1_db_ro_role[0].id
  ]
}
#
resource "snowflake_warehouse_grant" "dev_database_1_db_wh_monitor" {
  provider       = snowflake.accountadmin
  count          = var.deploy_development == true ? 1 : 0
  warehouse_name = snowflake_warehouse.dev_database_1_db_wh[0].id
  privilege      = upper("monitor")
  roles = [
    snowflake_role.dev_database_1_db_rw_role[0].id,
    snowflake_role.dev_database_1_db_ro_role[0].id
  ]
}
#
resource "snowflake_warehouse_grant" "dev_database_1_db_wh_modify" {
  provider       = snowflake.accountadmin
  count          = var.deploy_development == true ? 1 : 0
  warehouse_name = snowflake_warehouse.dev_database_1_db_wh[0].id
  privilege      = upper("modify")
  roles = [
    snowflake_role.dev_database_1_db_rw_role[0].id
  ]
}
#
resource "snowflake_warehouse_grant" "qa_database_1_db_wh_usage" {
  provider       = snowflake.accountadmin
  count          = var.deploy_qa == true ? 1 : 0
  warehouse_name = snowflake_warehouse.qa_database_1_db_wh[0].id
  privilege      = upper("usage")
  roles = [
    snowflake_role.qa_database_1_db_rw_role[0].id,
    snowflake_role.qa_database_1_db_ro_role[0].id
  ]
}
#
resource "snowflake_warehouse_grant" "qa_database_1_db_wh_operate" {
  provider       = snowflake.accountadmin
  count          = var.deploy_qa == true ? 1 : 0
  warehouse_name = snowflake_warehouse.qa_database_1_db_wh[0].id
  privilege      = upper("operate")
  roles = [
    snowflake_role.qa_database_1_db_rw_role[0].id,
    snowflake_role.qa_database_1_db_ro_role[0].id
  ]
}
#
resource "snowflake_warehouse_grant" "qa_database_1_db_wh_monitor" {
  provider       = snowflake.accountadmin
  count          = var.deploy_qa == true ? 1 : 0
  warehouse_name = snowflake_warehouse.qa_database_1_db_wh[0].id
  privilege      = upper("monitor")
  roles = [
    snowflake_role.qa_database_1_db_rw_role[0].id,
    snowflake_role.qa_database_1_db_ro_role[0].id
  ]
}
#
resource "snowflake_warehouse_grant" "qa_database_1_db_wh_modify" {
  provider       = snowflake.accountadmin
  count          = var.deploy_qa == true ? 1 : 0
  warehouse_name = snowflake_warehouse.qa_database_1_db_wh[0].id
  privilege      = upper("modify")
  roles = [
    snowflake_role.qa_database_1_db_rw_role[0].id
  ]
}
#
resource "snowflake_warehouse_grant" "prod_database_1_db_wh_usage" {
  provider       = snowflake.accountadmin
  count          = var.deploy_production == true ? 1 : 0
  warehouse_name = snowflake_warehouse.prod_database_1_db_wh[0].id
  privilege      = upper("usage")
  roles = [
    snowflake_role.prod_database_1_db_rw_role[0].id,
    snowflake_role.prod_database_1_db_ro_role[0].id
  ]
}
#
resource "snowflake_warehouse_grant" "prod_database_1_db_wh_operate" {
  provider       = snowflake.accountadmin
  count          = var.deploy_production == true ? 1 : 0
  warehouse_name = snowflake_warehouse.prod_database_1_db_wh[0].id
  privilege      = upper("operate")
  roles = [
    snowflake_role.prod_database_1_db_rw_role[0].id,
    snowflake_role.prod_database_1_db_ro_role[0].id
  ]
}
#
resource "snowflake_warehouse_grant" "prod_database_1_db_wh_monitor" {
  provider       = snowflake.accountadmin
  count          = var.deploy_production == true ? 1 : 0
  warehouse_name = snowflake_warehouse.prod_database_1_db_wh[0].id
  privilege      = upper("monitor")
  roles = [
    snowflake_role.prod_database_1_db_rw_role[0].id,
    snowflake_role.prod_database_1_db_ro_role[0].id
  ]
}
#
resource "snowflake_warehouse_grant" "prod_database_1_db_wh_modify" {
  provider       = snowflake.accountadmin
  count          = var.deploy_production == true ? 1 : 0
  warehouse_name = snowflake_warehouse.prod_database_1_db_wh[0].id
  privilege      = upper("modify")
  roles = [
    snowflake_role.prod_database_1_db_rw_role[0].id
  ]
}
#
resource "snowflake_warehouse_grant" "debug_database_1_db_wh_usage" {
  provider       = snowflake.accountadmin
  count          = var.deploy_debug == true ? 1 : 0
  warehouse_name = snowflake_warehouse.debug_database_1_db_wh[0].id
  privilege      = upper("usage")
  roles = [
    snowflake_role.debug_database_1_db_rw_role[0].id,
    snowflake_role.debug_database_1_db_ro_role[0].id
  ]
}
#
resource "snowflake_warehouse_grant" "debug_database_1_db_wh_operate" {
  provider       = snowflake.accountadmin
  count          = var.deploy_debug == true ? 1 : 0
  warehouse_name = snowflake_warehouse.debug_database_1_db_wh[0].id
  privilege      = upper("operate")
  roles = [
    snowflake_role.debug_database_1_db_rw_role[0].id,
    snowflake_role.debug_database_1_db_ro_role[0].id
  ]
}
#
resource "snowflake_warehouse_grant" "debug_database_1_db_wh_monitor" {
  provider       = snowflake.accountadmin
  count          = var.deploy_debug == true ? 1 : 0
  warehouse_name = snowflake_warehouse.debug_database_1_db_wh[0].id
  privilege      = upper("monitor")
  roles = [
    snowflake_role.debug_database_1_db_rw_role[0].id,
    snowflake_role.debug_database_1_db_ro_role[0].id
  ]
}
#
resource "snowflake_warehouse_grant" "debug_database_1_db_wh_modify" {
  provider       = snowflake.accountadmin
  count          = var.deploy_debug == true ? 1 : 0
  warehouse_name = snowflake_warehouse.debug_database_1_db_wh[0].id
  privilege      = upper("modify")
  roles = [
    snowflake_role.debug_database_1_db_rw_role[0].id
  ]
}
#