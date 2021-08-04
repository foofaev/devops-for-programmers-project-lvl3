terraform {
  backend "remote" {
    organization = "foo-team"

    workspaces {
      name = "hexlet-lvl3"
    }
  }
}
