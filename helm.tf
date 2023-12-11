resource "helm_release" "argocd" {
  name = "argocd"

  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  namespace        = "argocd"
  skip_crds        = true
  version          = "5.51.6"
  create_namespace = true
}
