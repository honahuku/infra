variable "PROJECT_NAME" {
  description = "GCP のプロジェクト ID"
  type        = string
}

variable "KUBE_HOST" {
  description = "kubernetes の接続先ホスト名"
  type        = string
}

variable "KUBE_CLIENT_CERT" {
  description = "kubernetes のクライアント証明書"
  type        = string
}

variable "KUBE_CLIENT_KEY" {
  description = "kubernetes のクライアント証明書の鍵"
  type        = string
}

variable "KUBE_CLUSTER_CA_CERT" {
  description = "kubernetes クラスタのCA証明書"
  type        = string
}
