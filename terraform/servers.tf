resource "digitalocean_droplet" "servers" {
  count    = 2
  image    = "docker-20-04"
  name     = "foofaev-project-lvl3-${count.index + 1}"
  region   = var.region
  size     = "s-1vcpu-1gb"
  ssh_keys = [data.digitalocean_ssh_key.foo-wsl2.id]
}
