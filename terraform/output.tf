output "webservers" {
  value = [for droplet in digitalocean_droplet.servers : {
    name         = droplet.name
    ipv4_address = droplet.ipv4_address
  }]
}
