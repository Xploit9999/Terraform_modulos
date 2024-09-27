terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

resource "digitalocean_vpc" "mi_vpc" {
  name     = var.nombre_vpc
  region   = var.region
  ip_range = var.ip_rango
}
