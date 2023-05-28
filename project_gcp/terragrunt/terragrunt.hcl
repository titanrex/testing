include {
  path = find_in_parent_folders()
}

terraform {
  source = "path/to/module"
}

inputs = {
  project_id = "xxxxx"
  region     = "us-east41"
  zone       = "us-east41-a"
}