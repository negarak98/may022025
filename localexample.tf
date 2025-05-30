

locals{
  servicename= "negarak"
  forum= "negarakmcit"
  lengthsa=length(local.servicename)
    winterlistofsports=["icehockey","snowboarding","iceskating"]
    total_output = ["150", "150", "150"]
    characters = ["luke", "yoda", "darth"]
    enemies_destroyed = [4252, 900, 20000056894]
    character_enemy_map =   { for character in local.characters: # Convert character list to a set
      character => local.enemies_destroyed
}
bestrestaurants=["lafrance","mcdonald","kingburger"]
    top3_food=["steak","burger","pizza"]


character_food_map= {for character in local.bestrestaurants: # Convert character list to a set
      character =>
  local.top3_food
  }
}



locals{
  sentence_1 = "Montreal bagels taste better at 3am"
}
locals{
  sentence_1_split = split(" ", "Montreal bagels taste better at 3am.")
}

locals{
  sentence_1_lenght = length(split(" " , "Montreal bagels taste better at 3am."))
}
locals{
  sentence_1_reverse  = reverse(split(" ", "Montreal bagels taste better at 3am."))
}

locals{
  last_word_2         = element(split(" ", "Montreal bagels taste better at 3am.") , length(split(" ", "Montreal bagels taste better at 3am.")) -1)
}




locals{
  name_of_project = "cloudcadabra"
  env          =  "non-prod"
  alltogether  = "${local.name_of_project}-${local.env}"
}


variable "servicename1" {
  default = "projects"
}


variable "environments" {  
default = ["dev" , "qa" , "stage" , "prod" ]
}

locals{
full_service_names ={
  for env in var.environments : env => "${env}-${var.servicename1}" }
}




variable "servicename2" {
  default = ["montreal" , "toronto" , "calgary" , "ottawa" ]
  }

locals{
  env_service_map = zipmap(var.environments, var.servicename2)
}



locals {
  original_regions = ["eastus", "westeurope", "centralindia"]
  upper_regions    = [for region in local.original_regions : upper(region)]
}

locals {
  vms = ["vm1", "vm2", "vm3"]

  vms_map = {
    for i, vm in local.vms :
    i => vm
  }
}


locals {
  rg_names = ["dev-rg", "test-rg", "prod-rg"]
}




locals {
  regions = ["eastus", "westeurope", "southindia", "centralus"]

  us_regions = [for r in local.regions : r if can(regex("us", r))]
}


locals {
  apps = ["api", "frontend", "worker", "db"]
}


locals {
  cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

locals {
  subnet_data = yamldecode(file("${path.module}/subnets/subnet.yaml"))
  subnets     = local.subnet_data.subnets
}



locals {
  region       = "eastus" 
  another_region = "westus"
  is_primary   = local.region==local.another_region  ? true : false
  
  environment  = local.is_primary ? "production" : "staging"
}

