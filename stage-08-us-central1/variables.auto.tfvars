name               = "stage-08-us-central1"
project_id         = "cloud-native-data"
region             = "us-central1"
zones              = ["us-central1-c"]
machine_type       = "n1-standard-2"
image_type         = "UBUNTU"
min_count          = 3
max_count          = 3
disk_size_gb       = 100
initial_node_count = 3
service_account    = "polaris-test@cloud-native-data.iam.gserviceaccount.com"
#node_pool_default_meta = "polaris-test-nodepool"
credentials        = "~/keys/polaris-test-keyfile.json"
