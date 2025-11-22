module "network" {
  source = "./modules/network"
}

module "jenkins" {
  source = "./modules/server"
  subnet_id = module.network.public_subnet_id
}

