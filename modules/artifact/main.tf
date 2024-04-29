resource "google_artifact_registry_repository" "default" {
  repository_id = "usa-kabu-artifacts"
  location      = "us-central1"
  project       = var.project_id
  format        = "DOCKER"
}

resource "google_project_iam_member" "artifact_registry" {
  project = var.project_id
  role    = "roles/artifactregistry.reader"
  member  = "serviceAccount:${google_service_account.jobs.email}"
}

resource "google_service_account" "jobs" {
  account_id   = "usa-kabu-jobs"
  display_name = "Jobs Service Account"
  project      = var.project_id
}
