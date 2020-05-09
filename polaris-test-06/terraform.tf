terraform {
  backend "gcs" {
    credentials = "~/keys/polaris-test-keyfile.json"
    bucket      = "polaris-test-06"
    prefix      = "terraform/state"
  }
}
