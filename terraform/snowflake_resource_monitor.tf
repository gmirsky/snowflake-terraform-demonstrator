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
