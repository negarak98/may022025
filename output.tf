output "print"{  
  value = local.servicename
  }
  output "secondprint" {
    value = local.forum
    }

  output "lengthsa"{
  value=local.lengthsa
  }

output "wintersportslist"{
  value=[for sport in local.winterlistofsports:sport]
}
output "total_output"{
  value=[for sport in local.total_output:sport]
}
output "characters"{
  value=[for sport in local.characters:sport]
}
output "bestrestaurants"{
  value=[for food in local.bestrestaurants:food]
}
output "top3_food"{
  value= local.bestrestaurants
}

output "total_sum" {
  value = sum([for total in local.total_output : tonumber(total)])
}
output "character_enemy_output" {
  value = local.character_enemy_map
}
