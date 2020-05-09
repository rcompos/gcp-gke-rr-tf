terraform {
  backend "gcs" {
    credentials = "~/keys/polaris-testbed-08-keyfile.json"
    bucket      = "polaris-testbed-08-cloud-native-data"
    prefix      = "terraform/state"
  }
}
