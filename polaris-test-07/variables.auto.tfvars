name               = "polaris-test-07"
project_id         = "cloud-native-data"
region             = "us-west4"
zones              = ["us-west4-a", "us-west4-b", "us-west4-c"]
machine_type       = "n1-standard-2"
min_count          = 1
max_count          = 3
disk_size_gb       = 100
initial_node_count = 1
service_account    = "polaris-test@cloud-native-data.iam.gserviceaccount.com"
#node_pool_default_meta = "polaris-test-nodepool"
credentials        = "~/keys/polaris-test-keyfile.json"
