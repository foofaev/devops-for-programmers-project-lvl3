resource "digitalocean_certificate" "cert" {
  name    = "hexlet"
  type    = "lets_encrypt"
  domains = [digitalocean_domain.default.name]
}
