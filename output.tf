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
  value= local.character_food_map
}

output "total_sum" {
  value = sum([for total in local.total_output : tonumber(total)])
}
output "character_enemy_output" {
  value = local.character_enemy_map
}


output "sentence_1" {
  value = local.sentence_1
}

output "sentec_1_split" {
  value = local.sentence_1_split
}
output "sentence_1_lenght" {
  value = lenght (split (" " , local.sentence_1_lenght))
}



  output "reverse_sentence_1" {
    value = local.reverse_sentence_1
}

  output "last_word_2" {
    value = local.last_word_2
}
