credentials        = "~/keys/polaris-test-keyfile.json"
project_id         = "cloud-native-data"
region             = "us-east1"
zones              = ["us-east1-b", "us-east1-c", "us-east1-d"]
name               = "polaris-test-01"
machine_type       = "n1-standard-2"
min_count          = 1
max_count          = 3
disk_size_gb       = 100
initial_node_count = 1
service_account    = "polaris-test@cloud-native-data.iam.gserviceaccount.com"
#node_pool_default_meta = "polaris-test-nodepool"