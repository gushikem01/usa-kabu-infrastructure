terraform {
    required_providers {
        google = {
        source  = "hashicorp/google"
        version = "5.26.0"
        }
    }

    backend "gcs" {
        bucket  = "usa-kabu-prd-terraform-state"
        prefix  = "terraform/state"
    }
}

provider "google" {
    project     = var.project_id
    credentials = var.credentials
    region      = var.region
}
