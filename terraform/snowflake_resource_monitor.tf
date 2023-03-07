resource "snowflake_resource_monitor" "dba_wh_rm" {
  provider                   = snowflake.accountadmin
  name                       = upper("dba_wh_rm")
  credit_quota               = 20
  start_timestamp            = formatdate("YYYY-MM-DD hh:mm", timeadd(timestamp(), "5m")) #valid values are null, timestamp or "IMMEDIATELY"
  end_timestamp              = null
  frequency                  = "DAILY" #valid values are MONTHLY|DAILY|WEEKLY|YEARLY|NEVER
  notify_triggers            = [80, 85, 90, 95]
  suspend_triggers           = [100]
  suspend_immediate_triggers = [105, 110]
  #notify_users = []
}
resource "snowflake_resource_monitor" "dev_database_1_db_wh_rm" {
  provider                   = snowflake.accountadmin
  count                      = var.deploy_development == true ? 1 : 0
  name                       = upper("dev_${var.database_name}_db_wh_rm")
  credit_quota               = 20
  start_timestamp            = formatdate("YYYY-MM-DD hh:mm", timeadd(timestamp(), "5m")) #valid values are null, timestamp or "IMMEDIATELY"
  end_timestamp              = null
  frequency                  = "DAILY" #valid values are MONTHLY|DAILY|WEEKLY|YEARLY|NEVER
  notify_triggers            = [80, 85, 90, 95]
  suspend_triggers           = [100]
  suspend_immediate_triggers = [105, 110]
  #notify_users = []
}
#
resource "snowflake_resource_monitor" "qa_database_1_db_wh_rm" {
  provider                   = snowflake.accountadmin
  count                      = var.deploy_qa == true ? 1 : 0
  name                       = upper("qa_${var.database_name}_db_wh_rm")
  credit_quota               = 20
  start_timestamp            = formatdate("YYYY-MM-DD hh:mm", timeadd(timestamp(), "5m")) #valid values are null, timestamp or "IMMEDIATELY"
  end_timestamp              = null
  frequency                  = "DAILY" #valid values are MONTHLY|DAILY|WEEKLY|YEARLY|NEVER
  notify_triggers            = [80, 85, 90, 95]
  suspend_triggers           = [100]
  suspend_immediate_triggers = [105, 110]
  #notify_users = []
}
#
resource "snowflake_resource_monitor" "prod_database_1_db_wh_rm" {
  provider                   = snowflake.accountadmin
  count                      = var.deploy_production == true ? 1 : 0
  name                       = upper("prod_${var.database_name}_db_wh_rm")
  credit_quota               = 20
  start_timestamp            = formatdate("YYYY-MM-DD hh:mm", timeadd(timestamp(), "5m")) #valid values are null, timestamp or "IMMEDIATELY"
  end_timestamp              = null
  frequency                  = "DAILY" #valid values are MONTHLY|DAILY|WEEKLY|YEARLY|NEVER
  notify_triggers            = [80, 85, 90, 95]
  suspend_triggers           = [100]
  suspend_immediate_triggers = [105, 110]
  #notify_users = []
}
#
resource "snowflake_resource_monitor" "debug_database_1_db_wh_rm" {
  provider                   = snowflake.accountadmin
  count                      = var.deploy_debug == true ? 1 : 0
  name                       = upper("debug_${var.database_name}_db_wh_rm")
  credit_quota               = 20
  start_timestamp            = formatdate("YYYY-MM-DD hh:mm", timeadd(timestamp(), "5m")) #valid values are null, timestamp or "IMMEDIATELY"
  end_timestamp              = null
  frequency                  = "DAILY" #valid values are MONTHLY|DAILY|WEEKLY|YEARLY|NEVER
  notify_triggers            = [80, 85, 90, 95]
  suspend_triggers           = [100]
  suspend_immediate_triggers = [105, 110]
  #notify_users = []
}
#