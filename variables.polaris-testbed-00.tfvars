credentials        = "~/keys/polaris-testbed-keyfile.json"
project_id         = "cloud-native-data"
region             = "us-west1"
#zones              = ["us-west3-a", "us-west3-b", "us-west3-c"]
zones              = ["us-west1-a", "us-west1-b", "us-west1-c"]
name               = "polaris-testbed-00"
#machine_type       = "g1-small"
machine_type       = "n1-standard-1"
min_count          = 1
max_count          = 3
disk_size_gb       = 100
initial_node_count = 1
service_account    = "polaris-testbed@cloud-native-data.iam.gserviceaccount.com"
#node_pool_default_meta = "polaris-testbed-00-nodepool"
