output "get_ip" {
  value = digitalocean_droplet.Desarrollo.ipv4_address
}

output "get_name" {
  value = digitalocean_droplet.Desarrollo.name
}

output "get_price" {
  value = digitalocean_droplet.Desarrollo.price_hourly
}

output "droplets_ids" {
  value = [for droplet in digitalocean_droplet.Desarrollo : droplet.id] 
}
