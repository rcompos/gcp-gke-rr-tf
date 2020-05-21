terraform {
  backend "gcs" {
    credentials = "~/keys/polaris-test-keyfile.json"
    bucket      = "stage-09-us-west1"
    prefix      = "terraform/state"
  }
}
