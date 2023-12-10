terraform {
  required_version = "1.6.4"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.7.0"
    }
  }

  # backend の値は Partial Configuration で init 時に渡す
  backend "gcs" {
  }
}

provider "google" {
  project = var.PROJECT_NAME
}
