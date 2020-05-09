terraform {
  backend "gcs" {
    credentials = "~/keys/polaris-testbed-15-keyfile.json"
    bucket      = "polaris-testbed-15-cloud-native-data"
    prefix      = "terraform/state"
  }
}
