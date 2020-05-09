terraform {
  backend "gcs" {
    credentials = "~/keys/polaris-testbed-14-keyfile.json"
    bucket      = "polaris-testbed-14-cloud-native-data"
    prefix      = "terraform/state"
  }
}
