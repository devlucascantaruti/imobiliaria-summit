data "google_client_config" "provider" {}

data "google_container_cluster" "product-summit" {
  name     = "product-summit"
  location = "us-central1"
}