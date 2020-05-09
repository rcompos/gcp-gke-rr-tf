terraform {
  backend "gcs" {
    credentials = "~/keys/polaris-testbed-09-keyfile.json"
    bucket      = "polaris-testbed-09-cloud-native-data"
    prefix      = "terraform/state"
  }
}
