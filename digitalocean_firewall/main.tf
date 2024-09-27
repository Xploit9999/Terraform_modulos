terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

resource "digitalocean_firewall" "mi_firewall" {
  name = var.nombre

  droplet_ids = [digitalocean_droplet.*.id]

  dynamic "inbound_rule" {
    for_each = [for reglas in var.reglas_firewall : reglas if reglas.tipo == "inbound"]

    content {
      protocol         = inbound_rule.value.protocolo
      port_range       = inbound_rule.value.puertos
      source_addresses = inbound_rule.value.origen
    }
  }

  dynamic "outbound_rule" {
    for_each = [for reglas in var.reglas_firewall : reglas if reglas.tipo == "outbound"]

    content {
      protocol         = inbound_rule.value.protocolo
      port_range       = inbound_rule.value.puertos
      source_addresses = inbound_rule.value.origen
    }
  }

}
