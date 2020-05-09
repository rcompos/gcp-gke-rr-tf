terraform {
  backend "gcs" {
    credentials = "~/keys/polaris-testbed-keyfile.json"
    bucket      = "polaris-testbed-cloud-native-data"
    prefix      = "terraform/state"
  }
}
