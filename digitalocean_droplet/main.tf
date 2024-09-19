terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

resource "digitalocean_droplet" "Desarrollo" {
  image     = var.so
  name      = var.hostname
  region    = var.region
  size      = var.recursos
  ssh_keys  = [digitalocean_ssh_key.Desarrollo.fingerprint]
  user_data = file("${path.module}/config.yaml")

  tags = [
    "${var.hostname}",
    "${var.ambiente}",
    "${var.ingeniero}"
  ]
}

resource "digitalocean_ssh_key" "Desarrollo" {
  name       = "Experimental"
  public_key = file("~/.ssh/id_rsa.pub")
}
