terraform {
  backend "gcs" {
    credentials = "~/keys/polaris-testbed-12-keyfile.json"
    bucket      = "polaris-testbed-12-cloud-native-data"
    prefix      = "terraform/state"
  }
}
