resource "digitalocean_vpc" "vpc" {
  name   = "hexlet-network"
  region = var.region
}
