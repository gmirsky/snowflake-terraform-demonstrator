resource "snowflake_warehouse" "dba_wh" {
  provider                            = snowflake.accountadmin
  auto_resume                         = true
  auto_suspend                        = 60 #Valid values any integer 0 or greater, or NULL
  comment                             = "Database Administrator's warehouse"
  enable_query_acceleration           = true
  initially_suspended                 = true
  max_cluster_count                   = 1 #valid values 1 to 10
  max_concurrency_level               = 8 #default is 8
  min_cluster_count                   = 1 #valid values 1 to 10
  name                                = upper("dba_wh")
  query_acceleration_max_scale_factor = 8 #valid values are 0 to 100; default is 8
  resource_monitor                    = snowflake_resource_monitor.dba_wh_rm.id
  scaling_policy                      = "ECONOMY" #STANDARD|ECONOMY
  statement_queued_timeout_in_seconds = 0         #valid values any integer 0 or greater, or NULL; default is 0
  statement_timeout_in_seconds        = 172800    #valid values are 0 to 604800 (7 days); default is 172800 (2 days)
  wait_for_provisioning               = true
  warehouse_size                      = "XSMALL"   #XSMALL|SMALL|MEDIUM|LARGE|XLARGE|XXLARGE|XXXLARGE|X4LARGE|X5LARGE|X6LARGE
  warehouse_type                      = "STANDARD" #STANDARD|SNOWPARK-OPTIMIZED
}
#
resource "snowflake_warehouse" "database_1_db_wh" {
  provider                            = snowflake.accountadmin
  auto_resume                         = true
  auto_suspend                        = 60 #Valid values any integer 0 or greater, or NULL
  comment                             = "Database 1 warehouse"
  enable_query_acceleration           = true
  initially_suspended                 = true
  max_cluster_count                   = 1 #valid values 1 to 10
  max_concurrency_level               = 8 #default is 8
  min_cluster_count                   = 1 #valid values 1 to 10
  name                                = upper("database_1_db_wh")
  query_acceleration_max_scale_factor = 8 #valid values are 0 to 100; default is 8
  resource_monitor                    = snowflake_resource_monitor.database_1_db_wh_rm.id
  scaling_policy                      = "ECONOMY" #STANDARD|ECONOMY
  statement_queued_timeout_in_seconds = 0         #valid values any integer 0 or greater, or NULL; default is 0
  statement_timeout_in_seconds        = 172800    #valid values are 0 to 604800 (7 days); default is 172800 (2 days)
  wait_for_provisioning               = true
  warehouse_size                      = "XSMALL"   #XSMALL|SMALL|MEDIUM|LARGE|XLARGE|XXLARGE|XXXLARGE|X4LARGE|X5LARGE|X6LARGE
  warehouse_type                      = "STANDARD" #STANDARD|SNOWPARK-OPTIMIZED
}
#
