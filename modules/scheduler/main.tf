resource "google_cloud_scheduler_job" "default" {
    name = "company-updater-scheduler-trigger"
    http_target {
        uri = "https://${var.region}-run.googleapis.com/apis/run.googleapis.com/v1/namespaces/${var.project_id}/jobs/company-updater:run"
        http_method = "POST"
        oauth_token {
            service_account_email = "${var.project_id}@${var.project_id}.iam.gserviceaccount.com"
            scope = "https://www.googleapis.com/auth/cloud-platform"
        }
    }
    schedule = "*/1 * * * *"
    time_zone = "Etc/UTC"
}
