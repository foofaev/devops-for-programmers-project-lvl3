resource "digitalocean_database_cluster" "db-cluster" {
  name                 = "lvl-3-db-cluster"
  engine               = "pg"
  version              = "13"
  size                 = "db-s-1vcpu-1gb"
  region               = var.region
  node_count           = 1
  private_network_uuid = digitalocean_vpc.vpc.id
}

resource "digitalocean_database_firewall" "db-firewall" {
  cluster_id = digitalocean_database_cluster.db-cluster.id

  dynamic "rule" {
    for_each = digitalocean_droplet.servers
    content {
      value = rule.value.id
      type  = "droplet"
    }
  }
}

resource "digitalocean_database_db" "db" {
  cluster_id = digitalocean_database_cluster.db-cluster.id
  name       = var.db_name
}
