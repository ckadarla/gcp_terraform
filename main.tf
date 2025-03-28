provider "google" {
  project = "gcp-poc-313408"
  region  = "us-central1"
  #   credentials = "tf-cp.json"
}

resource "google_storage_bucket" "cp-bucket" {
  name                     = "cp-no-public-access-bucket"
  location                 = "US"
  force_destroy            = true
  public_access_prevention = "enforced"
}