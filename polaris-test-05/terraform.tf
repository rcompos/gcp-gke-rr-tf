terraform {
  backend "gcs" {
    credentials = "~/keys/polaris-test-keyfile.json"
    bucket      = "polaris-test-05"
    prefix      = "terraform/state"
  }
}
