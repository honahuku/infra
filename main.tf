terraform {
  required_version = "1.6.4"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.7.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.11.0"
    }
  }

  # backend の値は Partial Configuration で init 時に渡す
  backend "gcs" {
  }
}

provider "google" {
  project = var.PROJECT_NAME
}

provider "helm" {
  kubernetes {
    host = var.KUBE_HOST

    client_certificate     = base64decode(var.KUBE_CLIENT_CERT)
    client_key             = base64decode(var.KUBE_CLIENT_KEY)
    cluster_ca_certificate = base64decode(var.KUBE_CLUSTER_CA_CERT)
  }
}
