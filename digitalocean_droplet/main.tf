terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

data "digitalocean_ssh_key" "Desarrollo" {
  name  = "${var.ssh_key}"
}

resource "digitalocean_droplet" "Desarrollo" {
  image     = var.so
  name      = var.hostname
  region    = var.region
  size      = var.recursos
  ssh_keys  = [data.digitalocean_ssh_key.Desarrollo.id]
  user_data = file("${path.module}/config.yaml")

  tags = [
    "${var.hostname}",
    "${var.ambiente}",
    "${var.ingeniero}"
  ]
}
