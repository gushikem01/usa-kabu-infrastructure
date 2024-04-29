resource "google_secret_manager_secret" "fmp_api_key" {
    secret_id = "FMP_API_KEY"
    replication {
        auto {}
    }
}

resource "google_secret_manager_secret" "database_url" {
    secret_id = "DATABASE_URL"
    replication {
        auto {}
    }
}
