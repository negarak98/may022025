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








