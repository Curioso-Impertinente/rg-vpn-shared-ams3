resource "digitalocean_droplet" "vpn" {
  image  = "ubuntu-22-04-x64"
  name   = "vpn-shared-ams3"
  region = "ams3"
  size   = "s-1vcpu-1gb"

  backups    = false
  monitoring = true
  vpc_uuid   = data.digitalocean_vpc.base_dev_ams3.id

  tags = ["svc:vpn", "env:shared"]
}
