terraform {
  backend "gcs" {
    credentials = "~/keys/polaris-test-05-keyfile.json"
    bucket      = "polaris-test-05-cloud-native-data"
    prefix      = "terraform/state"
  }
}
