variable "reglas_firewall" {
  type = list(object({
    tipo      = string
    protocolo = string
    puertos   = string
    origen    = list(string)
  }))

  default = [
    {
      tipo      = "inbound"
      protocolo = "tcp"
      puertos   = "22"
      origen    = ["192.168.1.0/24"]
    }
  ]
}

variable "nombre" {
  type    = string
  default = "mi_firewall"
}

variable "droplets_ids" {
  type = list(string)
}
