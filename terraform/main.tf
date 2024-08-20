resource "kubernetes_namespace_v1" "website" {
  metadata {
    name = "website"
  }
}

resource "kubernetes_deployment" "website" {
  metadata {
    name = "summit-deployment"
    labels = {
      app = "summit"
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "summit"
      }
    }

    template {
      metadata {
        labels = {
          app = "summit"
        }
      }

      spec {
        container {
          name  = "summit-container"
          image = "myregistry.azurecr.io/summit:v1"
          port {
            container_port = 80
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "meu_site" {
  metadata {
    name = "summit-service"
  }

  spec {
    selector = {
      app = "summit"
    }

    port {
      port        = 80
      target_port = 80
    }

    type = "ClusterIP"
  }
}