resource "google_sql_database" "database" {
  name     = var.database_name
  instance = google_sql_database_instance.main.name
  project  = var.project_id
}

resource "google_sql_database_instance" "main" {
  name             = var.instance_name
  database_version = var.database_version
  region           = var.region
  project          = var.project_id
  settings {
    tier = var.tier
    disk_autoresize = true
    disk_size = 10
    disk_type = "PD_SSD"

    ip_configuration {
      ipv4_enabled    = true
      require_ssl    = true
    }
  }

}

resource "google_sql_user" "main" {
  name     = var.database_user
  instance = google_sql_database_instance.main.name
  password = var.database_password
  project  = var.project_id
}
