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
  warehouse_size                      = "XSMALL"   #XSMALL|SMALL|MEDIUM|LARGE|XLARGE|XXLARGE|XXXLARGE|X4LARGE|X5LARGE|X6LARGE
  warehouse_type                      = "STANDARD" #STANDARD|SNOWPARK-OPTIMIZED
}
#
resource "snowflake_warehouse" "dev_database_1_db_wh" {
  provider                            = snowflake.accountadmin
  count                               = var.deploy_development == true ? 1 : 0
  auto_resume                         = true
  auto_suspend                        = 60 #Valid values any integer 0 or greater, or NULL
  comment                             = "dev_${var.database_name}_db warehouse"
  enable_query_acceleration           = true
  initially_suspended                 = true
  max_cluster_count                   = 1 #valid values 1 to 10
  max_concurrency_level               = 8 #default is 8
  min_cluster_count                   = 1 #valid values 1 to 10
  name                                = upper("dev_${var.database_name}_db_wh")
  query_acceleration_max_scale_factor = 8 #valid values are 0 to 100; default is 8
  resource_monitor                    = snowflake_resource_monitor.dev_database_1_db_wh_rm[0].id
  scaling_policy                      = "ECONOMY" #STANDARD|ECONOMY
  statement_queued_timeout_in_seconds = 0         #valid values any integer 0 or greater, or NULL; default is 0
  statement_timeout_in_seconds        = 172800    #valid values are 0 to 604800 (7 days); default is 172800 (2 days)
  warehouse_size                      = "XSMALL"   #XSMALL|SMALL|MEDIUM|LARGE|XLARGE|XXLARGE|XXXLARGE|X4LARGE|X5LARGE|X6LARGE
  warehouse_type                      = "STANDARD" #STANDARD|SNOWPARK-OPTIMIZED
}
#
resource "snowflake_warehouse" "qa_database_1_db_wh" {
  provider                            = snowflake.accountadmin
  count                               = var.deploy_qa == true ? 1 : 0
  auto_resume                         = true
  auto_suspend                        = 60 #Valid values any integer 0 or greater, or NULL
  comment                             = "qa_${var.database_name}_db warehouse"
  enable_query_acceleration           = true
  initially_suspended                 = true
  max_cluster_count                   = 1 #valid values 1 to 10
  max_concurrency_level               = 8 #default is 8
  min_cluster_count                   = 1 #valid values 1 to 10
  name                                = upper("qa_${var.database_name}_db_wh")
  query_acceleration_max_scale_factor = 8 #valid values are 0 to 100; default is 8
  resource_monitor                    = snowflake_resource_monitor.qa_database_1_db_wh_rm[0].id
  scaling_policy                      = "ECONOMY" #STANDARD|ECONOMY
  statement_queued_timeout_in_seconds = 0         #valid values any integer 0 or greater, or NULL; default is 0
  statement_timeout_in_seconds        = 172800    #valid values are 0 to 604800 (7 days); default is 172800 (2 days)
  warehouse_size                      = "XSMALL"   #XSMALL|SMALL|MEDIUM|LARGE|XLARGE|XXLARGE|XXXLARGE|X4LARGE|X5LARGE|X6LARGE
  warehouse_type                      = "STANDARD" #STANDARD|SNOWPARK-OPTIMIZED
}
#
resource "snowflake_warehouse" "prod_database_1_db_wh" {
  provider                            = snowflake.accountadmin
  count                               = var.deploy_production == true ? 1 : 0
  auto_resume                         = true
  auto_suspend                        = 60 #Valid values any integer 0 or greater, or NULL
  comment                             = "prod_${var.database_name}_db warehouse"
  enable_query_acceleration           = true
  initially_suspended                 = true
  max_cluster_count                   = 1 #valid values 1 to 10
  max_concurrency_level               = 8 #default is 8
  min_cluster_count                   = 1 #valid values 1 to 10
  name                                = upper("prod_${var.database_name}_db_wh")
  query_acceleration_max_scale_factor = 8 #valid values are 0 to 100; default is 8
  resource_monitor                    = snowflake_resource_monitor.prod_database_1_db_wh_rm[0].id
  scaling_policy                      = "ECONOMY" #STANDARD|ECONOMY
  statement_queued_timeout_in_seconds = 0         #valid values any integer 0 or greater, or NULL; default is 0
  statement_timeout_in_seconds        = 172800    #valid values are 0 to 604800 (7 days); default is 172800 (2 days)
  warehouse_size                      = "XSMALL"   #XSMALL|SMALL|MEDIUM|LARGE|XLARGE|XXLARGE|XXXLARGE|X4LARGE|X5LARGE|X6LARGE
  warehouse_type                      = "STANDARD" #STANDARD|SNOWPARK-OPTIMIZED
}
#
resource "snowflake_warehouse" "debug_database_1_db_wh" {
  provider                            = snowflake.accountadmin
  count                               = var.deploy_debug == true ? 1 : 0
  auto_resume                         = true
  auto_suspend                        = 60 #Valid values any integer 0 or greater, or NULL
  comment                             = "debug_${var.database_name}_db warehouse"
  enable_query_acceleration           = true
  initially_suspended                 = true
  max_cluster_count                   = 1 #valid values 1 to 10
  max_concurrency_level               = 8 #default is 8
  min_cluster_count                   = 1 #valid values 1 to 10
  name                                = upper("debug_${var.database_name}_db_wh")
  query_acceleration_max_scale_factor = 8 #valid values are 0 to 100; default is 8
  resource_monitor                    = snowflake_resource_monitor.debug_database_1_db_wh_rm[0].id
  scaling_policy                      = "ECONOMY" #STANDARD|ECONOMY
  statement_queued_timeout_in_seconds = 0         #valid values any integer 0 or greater, or NULL; default is 0
  statement_timeout_in_seconds        = 172800    #valid values are 0 to 604800 (7 days); default is 172800 (2 days)
  warehouse_size                      = "XSMALL"   #XSMALL|SMALL|MEDIUM|LARGE|XLARGE|XXLARGE|XXXLARGE|X4LARGE|X5LARGE|X6LARGE
  warehouse_type                      = "STANDARD" #STANDARD|SNOWPARK-OPTIMIZED
}
#