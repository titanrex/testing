provider "aws" {
  region = "us-west-2"  
}

resource "aws_organizations_organization" "roboto" {
  feature_set = "ALL"

  aws_service_access_principals = ["cloudformation.amazonaws.com"]
}

resource "aws_organizations_account" "roboto_account" {
  name       = "roboto_account-account"
  email      = "roboto_account@example.com"
  role_name  = "OrganizationAccountAccessRole"

  depends_on = [aws_organizations_organization.roboto]
}

resource "aws_organizations_organization_account_attachment" "projec_roboto" {
  organization_id = aws_organizations_organization.roboto.id
  account_id      = aws_organizations_account.roboto_account.id
}

