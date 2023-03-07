resource "snowflake_role_grants" "dev_database_1_db_ro_role" {
  role_name = snowflake_role.dev_database_1_db_ro_role[0].id
  users = [
    snowflake_user.dev_user_01[0].name
  ]
}
#
resource "snowflake_role_grants" "dev_database_1_db_rw_role" {
  role_name = snowflake_role.dev_database_1_db_rw_role[0].id
  users = [
    snowflake_user.dev_user_01[0].name
  ]
}
#