resource "google_artifact_registry_repository" "default" {
  repository_id = "usa-kabu-jobs"
  location      = "us-central1"
  project       = var.project_id
  format        = "DOCKER"
}
