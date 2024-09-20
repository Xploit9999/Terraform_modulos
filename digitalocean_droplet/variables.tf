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
