output "get_vpc_name" {
  value = digitalocean_vpc.vpn-vpc.name
}

output "get_ip_range" {
  value = digitalocean_vpc.vpn-vpc.ip_range
}
