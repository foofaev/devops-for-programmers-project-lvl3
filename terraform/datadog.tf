resource "datadog_monitor" "networkmonitor" {
  name    = "Hexlet HTTP Alert {{host.name}}"
  type    = "service check"
  message = "@all"
  query   = var.datadog_query
}
