terraform {
    required_providers {
        google = {
        source  = "hashicorp/google"
        }
    }
}

provider "google" {
    project     = var.project_id
    credentials = var.credentials
    region      = var.region
}
