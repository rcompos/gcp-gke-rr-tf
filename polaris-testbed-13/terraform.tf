terraform {
  backend "gcs" {
    credentials = "~/keys/polaris-testbed-13-keyfile.json"
    bucket      = "polaris-testbed-13-cloud-native-data"
    prefix      = "terraform/state"
  }
}
