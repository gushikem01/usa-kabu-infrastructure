variable "project_id" {
  description = "value of the project id"
  default = "usa-kabu-prd"
}

variable "region" {
  description = "value of the region"
  default = "us-central1"
}

variable "database_name" {
  description = "value of the database name"
  default = "stocks"
}

variable "instance_name" {
  description = "value of the instance name"
  default = "usakabu"
}

variable "database_version" {
  description = "value of the database version"
  default = "POSTGRES_15"
}

variable "tier" {
  description = "value of the tier"
  default = "db-f1-micro"
}

variable "credentials" {
  description = "value of the credentials"
  default = "/.config/gcloud/usa-kabu-prd.json"
}

variable "database_user" {
  type = string
}

variable "database_password" {
  type = string
}
