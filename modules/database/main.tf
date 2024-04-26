resource "google_sql_database_instance" "default" {
  name             = var.instance_name
  database_version = var.database_version
  region           = var.region
  project          = var.project_id
  settings {
    tier = var.tier
    disk_autoresize = true
    disk_size = 10
    disk_type = "PD_SSD"
  }
}

resource "google_sql_database" "default" {
  name     = var.database_name
  instance = google_sql_database_instance.default.name
  project  = var.project_id
}
