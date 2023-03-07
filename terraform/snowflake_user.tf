resource "snowflake_user" "dev_user_01" {
  provider                = snowflake.useradmin
  count                   = var.deploy_development == true ? 1 : 0
  name                    = upper("dev_user_01")
  comment                 = "Development user 01"
  login_name              = "dev_user_01"
  password                = var.default_user_password
  disabled                = false
  display_name            = upper("dev_user_01")
  email                   = "noone@nodomain.com"
  first_name              = "development"
  last_name               = "user"
  default_warehouse       = snowflake_warehouse.dev_database_1_db_wh[0].id
  default_role            = snowflake_role.debug_database_1_db_ro_role[0].id
  default_secondary_roles = []
  must_change_password    = true
  rsa_public_key          = null
  rsa_public_key_2        = null
}
#
