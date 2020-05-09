terraform {
  backend "gcs" {
    credentials = "~/keys/polaris-testbed-11-keyfile.json"
    bucket      = "polaris-testbed-11-cloud-native-data"
    prefix      = "terraform/state"
  }
}
