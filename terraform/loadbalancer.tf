resource "digitalocean_loadbalancer" "loadbalancer" {
  name   = "foofaev-project-3-loadbalancer"
  region = var.region

  redirect_http_to_https = true

  forwarding_rule {
    entry_port     = 80
    entry_protocol = "http"

    target_port     = var.app_port
    target_protocol = "http"
  }

  forwarding_rule {
    entry_port     = 443
    entry_protocol = "https"

    target_port     = var.app_port
    target_protocol = "http"

    certificate_name = digitalocean_certificate.cert.name
  }

  healthcheck {
    port     = var.app_port
    protocol = "tcp"
  }

  droplet_ids = digitalocean_droplet.servers.*.id
}
