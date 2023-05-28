provider "google" {
  impersonate_service_account = var.project_service_account
  alias = "equifax"
  project = var.project_id
}

provider "google-beta" {
  impersonate_service_account = var.project_service_account
  alias = "equifax"
  project = var.project_id
}