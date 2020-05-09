credentials        = "~/keys/polaris-testbed-15-keyfile.json"
project_id         = "cloud-native-data"
region             = "asia-northeast3"
zones              = ["asia-northeast3-a", "asia-northeast3-b", "asia-northeast3-c"]
name               = "polaris-testbed-15"
machine_type       = "n1-standard-2"
min_count          = 1
max_count          = 3
disk_size_gb       = 100
initial_node_count = 1
service_account    = "polaris-testbed-15@cloud-native-data.iam.gserviceaccount.com"
#node_pool_default_meta = "polaris-testbed-15-nodepool"