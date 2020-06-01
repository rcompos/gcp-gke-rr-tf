terraform {
  backend "gcs" {
    credentials = "~/keys/polaris-test-keyfile.json"
    bucket      = "velero-sandbox-00"
    prefix      = "terraform/state"
  }
}
