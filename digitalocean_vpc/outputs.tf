output "get_vpc_name" {
  value = digitalocean_vpc.mi-vpc.name
}

output "get_ip_range" {
  value = digitalocean_vpc.mi-vpc.ip_range
}

output "vpc_id" {
  value = digitalocean_vpc.mi-vpc.id
}
