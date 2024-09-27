terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

data "digitalocean_ssh_key" "Desarrollo" {
  name = var.ssh_key
}

resource "digitalocean_droplet" "Desarrollo" {
  image    = var.so
  name     = var.hostname
  region   = var.region
  size     = var.recursos
  ssh_keys = [data.digitalocean_ssh_key.Desarrollo.id]
  vpc_uuid = var.vpc_id != "" ? var.vpc_id : null
  user_data = templatefile("${path.module}/templates/provisioning.yaml.tpl", {
    users_info = var.usuarios
    packages   = var.paquetes
    update     = var.actualizar
  })

  tags = [
    "${var.hostname}",
    "${var.ambiente}",
    "${var.ingeniero}"
  ]
}
