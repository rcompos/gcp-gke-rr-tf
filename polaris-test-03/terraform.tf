terraform {
  backend "gcs" {
    credentials = "~/keys/polaris-test-keyfile.json"
    bucket      = "polaris-test-03"
    prefix      = "terraform/state"
  }
}
