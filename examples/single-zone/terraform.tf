terraform {
  backend "gcs" {
    credentials = "~/keys/polaris-test-keyfile.json"
    bucket      = "my-tf-state-bucket-name"
    prefix      = "terraform/state"
  }
}
