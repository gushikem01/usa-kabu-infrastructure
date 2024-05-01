resource "google_storage_bucket" "terraform-state-store" {
    name          = "usa-kabu-prd-terraform-state"
    location      = var.region
    project       = var.project_id

    versioning {
        enabled = true
    }

    lifecycle_rule {
        condition {
            age = 30
        }

        action {
            type = "Delete"
        }
    }
}
