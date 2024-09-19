resource "digitalocean_droplet" "Desarrollo" {
  image     = var.so
  name      = var.hostname
  region    = var.region
  size      = var.recursos
  ssh_keys  = [digitalocean_ssh_key.Desarrollo.fingerprint]
  user_data = file("digitalocean_droplet/config.yaml")

  tags = [
    "${var.hostname}",
    "${var.ambiente}",
    "${var.ingeniero}"
  ]
}

resource "digitalocean_ssh_key" "Desarrollo" {
  name       = var.hostname
  public_key = file("~/.ssh/id_rsa.pub")
}
