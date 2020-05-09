terraform {
  backend "gcs" {
    credentials = "~/keys/polaris-test-keyfile.json"
    bucket      = "polaris-test-cloud-native-data"
    prefix      = "terraform/state"
  }
}
