
resource "google_sql_database_instance" "default" {
  name             = var.instance_name
  database_version = var.database_version
  region           = var.region
  project          = var.project_id
  settings {
    tier = var.tier
  }
}
