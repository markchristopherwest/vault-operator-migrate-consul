storage_source "consul" {
  address = "host.docker.internal:9500"
  path    = "backend/consul"
}

storage_destination "raft" {
  path = "backend/raft"
  node_id = "localhost"
}
cluster_addr = "http://127.0.0.1:8201"