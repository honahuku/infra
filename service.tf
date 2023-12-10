variable "services" {
  description = "Cloud APIで有効化するサービスのリスト"
  type        = list(string)
  default = [
    "apigateway.googleapis.com",
    "iam.googleapis.com",
    "servicecontrol.googleapis.com",
    "compute.googleapis.com",
    "cloudresourcemanager.googleapis.com",
  ]
}

resource "google_project_service" "project_service" {
  for_each = toset(var.services)

  service            = each.value
  disable_on_destroy = false

  timeouts {
    create = "5m"
  }
}
