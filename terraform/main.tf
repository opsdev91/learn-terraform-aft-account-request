module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "tinhtq+duanmoi@agileops.vn"
    AccountName               = "tinhtruong"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "tinhtq@agileops.vn"
    SSOUserFirstName          = "Tinh"
    SSOUserLastName           = "Truong"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
