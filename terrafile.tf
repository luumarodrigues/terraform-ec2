module "servers" {
  source = "./servers" #output

  servers = 1 #input
}

output "ip_address" {
  value = module.servers.ip_address
}
