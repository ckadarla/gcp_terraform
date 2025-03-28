provider "google" {

}

resource "google_storage_bucket" "auto-expire" {
  name                     = "no-public-access-bucket"
  location                 = "US"
  force_destroy            = true
  project                  = "gcp-poc-313408"
  public_access_prevention = "enforced"
}