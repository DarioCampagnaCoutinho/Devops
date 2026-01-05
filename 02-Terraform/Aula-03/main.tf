terraform {
  required_version = ">= 0.13"
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {}

resource "digitalocean_droplet" "web" {
  name   = var.name
  region = var.region
  size   = var.size
  image  = var.image
  ssh_keys = var.ssh_keys
  user_data = templatefile("${path.module}/cloud_init.tpl", { message = var.message })
  tags = var.tags
}
