### Hexlet tests and linter status:
[![Actions Status](https://github.com/foofaev/devops-for-programmers-project-lvl3/workflows/hexlet-check/badge.svg)](https://github.com/foofaev/devops-for-programmers-project-lvl3/actions)

### Deployed app:
https://weryha.xyz/

### Prerequisites:
* Install Ansible > 4
* Install Make
* Create (if necessary) account at [Terraform Cloud](https://app.terraform.io/)
* Create (if necessary) account at [Datadog](https://datadoghq.eu/)
* Login into Terraform CLI under your Terraform Cloud account
* Get secret `vault_password` file and place it to `./ansible/.vault_password`.
* Call `make setup` to install prerequisites and initiate terraform

* Ensure you have the following variables in your Terraform Cloud account or put them into the file with `*.auto.tfvars` extension:
```HCL
do_token /* DigitalOcean Personal Access Token */
pvt_key /* Private ssh key location, so Terraform can use it to log in to new Droplets */
region /* Services region to use */
datadog_api_url /* The datadog API URL */
datadog_api_key /* The datadog API key */
datadog_app_key /* The datadog APP key */
datadog_query /* The monitor query to notify on */
app_port /* Port your application runs at */
db_name /* Name of the database to use */
```

### To create infrastructure using Terraform run:
```sh
  make build-infrastructure
```

### To deploy an app run:
```sh
  make deploy
```
