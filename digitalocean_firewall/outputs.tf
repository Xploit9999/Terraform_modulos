output "nombre_firewall" {
  value = digitalocean_firewall.mi_firewall.name
}

output "reglas_entrada" {
  description = "Muestra reglas de entrada generadas"
  value = {
    name = digitalocean_firewall.mi_firewall.name
    inbound = [for regla in digitalocean_firewall.mi_firewall.inbound_rule : {
      protocolo = regla.protocol
      puertos   = regla.port_range
      origen    = regla.source_addresses
    }]
  }
}

output "reglas_salida" {
  description = "Muestra reglas de salida generadas"
  value = {
    name = digitalocean_firewall.mi_firewall.name
    inbound = [for regla in digitalocean_firewall.mi_firewall.outbound_rule : {
      protocolo = regla.protocol
      puertos   = regla.port_range
      origen    = regla.source_addresses
    }]
  }
}
