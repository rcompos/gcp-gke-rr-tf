terraform {
  backend "gcs" {
    credentials = "~/keys/polaris-test-keyfile.json"
    bucket      = "polaris-test-01"
    prefix      = "terraform/state"
  }
}
