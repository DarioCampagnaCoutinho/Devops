output "ipv4_address" {
  description = "Endereço IPv4 público do droplet"
  value       = digitalocean_droplet.web.ipv4_address
}

output "droplet_id" {
  description = "ID do droplet"
  value       = digitalocean_droplet.web.id
}
