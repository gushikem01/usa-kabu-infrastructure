variable "project_id" {
  description = "value of the project id"
  default = "project-id"
}

variable "region" {
  description = "value of the region"
  default = "us-central1"
}

variable "database_name" {
  description = "value of the database name"
  default = "database-name"
}

variable "instance_name" {
  description = "value of the instance name"
  default = "instance-name"
}

variable "database_version" {
  description = "value of the database version"
  default = "POSTGRES_14"
}

variable "tier" {
  description = "value of the tier"
  default = "db-f1-micro"
}
