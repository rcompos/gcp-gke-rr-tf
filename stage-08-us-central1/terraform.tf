terraform {
  backend "gcs" {
    credentials = "~/keys/polaris-test-keyfile.json"
    bucket      = "stage-08-us-central1"
    prefix      = "terraform/state"
  }
}
