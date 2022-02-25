resource "kubernetes_namespace" "argocd" {
  metadata {
    annotations = {
      name = var.app
    }
    labels = {
      app = var.app
    }
    name = var.app
  }
}

resource "helm_release" "argocd" {
  name = var.app
  namespace = kubernetes_namespace.argocd.metadata.0.name
  chart = "../charts/"
  version = "1.0.0"
  dependency_update = true
  values = [
    "${file("../charts/values-overrides.yaml")}"
  ]
}
