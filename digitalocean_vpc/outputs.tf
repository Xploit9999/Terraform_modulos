output "get_vpc_name" {
  value = digitalocean_vpc.mi_vpc.name
}

output "get_ip_range" {
  value = digitalocean_vpc.mi_vpc.ip_range
}
