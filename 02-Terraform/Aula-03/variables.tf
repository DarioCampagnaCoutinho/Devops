variable "name" {
  description = "Nome do droplet"
  type        = string
  default     = "tf-droplet"
}

variable "region" {
  description = "Região do droplet (ex.: nyc1, sfo2, ams3)"
  type        = string
  default     = "nyc1"
}

variable "size" {
  description = "Tamanho do droplet (ex.: s-1vcpu-1gb)"
  type        = string
  default     = "s-1vcpu-1gb"
}

variable "image" {
  description = "Imagem do sistema (ex.: ubuntu-22-04-x64)"
  type        = string
  default     = "ubuntu-22-04-x64"
}

variable "ssh_keys" {
  description = "Lista de fingerprints / ids de chaves SSH já cadastradas na DigitalOcean (opcional)"
  type        = list(string)
  default     = []
}

variable "message" {
  description = "Mensagem que será exibida na página servida pelo Nginx"
  type        = string
  default     = "Olá — droplet criado pelo Terraform na DigitalOcean!"
}

variable "tags" {
  description = "Tags aplicadas ao droplet"
  type        = list(string)
  default     = ["terraform"]
}
