terraform {
  backend "gcs" {
    credentials = "~/keys/polaris-test-keyfile.json"
    bucket      = "stage-10-us-east4"
    prefix      = "terraform/state"
  }
}
