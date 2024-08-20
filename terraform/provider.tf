provider "google" {
  project = "constant-falcon-433116-h1"
  region  = "us-central1"
}

provider "kubernetes" {
  host  = "https://${data.google_container_cluster.product-summit.endpoint}"
  token = data.google_client_config.provider.access_token
  cluster_ca_certificate = base64decode(
    data.google_container_cluster.product-summit.master_auth[0].cluster_ca_certificate,
  )
}