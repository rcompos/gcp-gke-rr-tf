terraform {
  backend "gcs" {
    credentials = "~/keys/polaris-test-keyfile.json"
    bucket      = "stage-11-us-east4"
    prefix      = "terraform/state"
  }
}
