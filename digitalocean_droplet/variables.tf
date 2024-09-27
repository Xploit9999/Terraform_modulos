variable "hostname" {
  description = "Nombre del recurso"
  default     = "vm_xxx"
  type        = string
}

variable "recursos" {
  description = "Hardware asignacion"
  default     = "s-1vcpu-1gb"
  type        = string
}

variable "ambiente" {
  description = "Ambiente de la maquina"
  default     = "Laboratorio"
  type        = string
}

variable "region" {
  description = "Region del servidor"
  default     = "nyc1"
  type        = string
}

variable "ingeniero" {
  description = "Nombre del responsable"
  default     = "John Salchichon"
  type        = string
}

variable "so" {
  description = "Imagen del sistema operativo"
  default     = "almalinux-9-x64"
  type        = string
}

variable "ssh_key" {
  description = "Se especifica llave existente de ssh"
  default     = "yourkey"
  type        = string
}

variable "vpc_id" {
  type = string
  default = ""
}

variable "usuarios" {
  type = list(object({
    nombre = string
    desc   = string
    grupo  = string
    pass   = string
    sudo   = string
  }))

  default = [{
    nombre = "John"
    desc   = "Ingeniero UNIX"
    grupo  = "sysadm"
    pass   = "$6$XGPXU9OG5aldbR6p$vAXFSTFNdM12pOGwAebcEtTgFFgWd1CnUeDCEG517hETyLSQLCGR1gE9ehfzmF3eB8ifDMqzASi6ntx13zeou0"
    sudo   = "ALL=(ALL) NOPASSWD:ALL"

  }]
}


variable "paquetes" {
  type = list(any)

  default = ["iotop"]
}

variable "actualizar" {
  type = bool

  default = false
}
