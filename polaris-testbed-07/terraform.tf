terraform {
  backend "gcs" {
    credentials = "~/keys/polaris-testbed-07-keyfile.json"
    bucket      = "polaris-testbed-07-cloud-native-data"
    prefix      = "terraform/state"
  }
}
