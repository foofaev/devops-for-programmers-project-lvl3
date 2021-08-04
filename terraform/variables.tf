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
}

variable "datadog_api_url" {
  type    = string
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
}

variable "app_port" {
  type = number
}

variable "db_name" {
  type    = string
}
