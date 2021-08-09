variable "do_token" {
  description = "DigitalOcean Personal Access Token"
  type        = string
}

variable "pvt_key" {
  description = "Private ssh key location, so Terraform can use it to log in to new Droplets"
  type        = string
}

variable "region" {
  description = "Services region"
  type        = string
  default     = "fra1"
}

variable "datadog_api_url" {
  type    = string
  default = "https://api.datadoghq.eu/"
}

variable "datadog_api_key" {
  description = "Datadog API key"
  type        = string
}

variable "datadog_app_key" {
  type = string
}

variable "datadog_query" {
  description = "The monitor query to notify on"
  type        = string
  default     = "\"http.can_connect\".over(\"instance:application_health_check_status\",\"url:http://localhost:3000\").by(\"host\",\"instance\",\"url\").last(2).count_by_status()"
}

variable "app_port" {
  type    = number
  default = 3000
}

variable "db_name" {
  type    = string
  default = "hexlet_lvl_3"
}
