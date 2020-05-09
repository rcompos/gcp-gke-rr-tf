credentials        = "~/keys/polaris-test-keyfile.json"
project_id         = "cloud-native-data"
region             = "europe-north1"
zones              = ["europe-north1-a", "europe-north1-b", "europe-north1-c"]
name               = "polaris-test-08"
machine_type       = "n1-standard-2"
min_count          = 1
max_count          = 3
disk_size_gb       = 100
initial_node_count = 1
service_account    = "polaris-test@cloud-native-data.iam.gserviceaccount.com"
#node_pool_default_meta = "polaris-test-nodepool"