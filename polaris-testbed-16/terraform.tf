terraform {
  backend "gcs" {
    credentials = "~/keys/polaris-testbed-16-keyfile.json"
    bucket      = "polaris-testbed-16-cloud-native-data"
    prefix      = "terraform/state"
  }
}
