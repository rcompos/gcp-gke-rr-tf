terraform {
  backend "gcs" {
    credentials = "~/keys/polaris-testbed-10-keyfile.json"
    bucket      = "polaris-testbed-10-cloud-native-data"
    prefix      = "terraform/state"
  }
}
