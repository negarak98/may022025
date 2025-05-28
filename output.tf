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
  value = length(split(" " , local.sentence_1))
}

output "sentence_1_reverse" {
  value = reverse(split(" ", local.sentence_1))
}


  output "reverse_sentence_1" {
    value = join(" ", reverse(split(" ", local.sentence_1)))
}

  output "last_word_2" {
    value = local.last_word_2 
}

  output "name__of_project" {
  value = local.alltogether
}



output "full_service_names" {
  value = local.full_service_names
}

output "env_service_map" {
value = local.env_service_map
}

output "vms_map" {
  value = local.vms_map
}

output "uppercase_regions" {
  value = local.upper_names
}


output "combined_map" {
  value = local.combined_map
}

output "us_regions" {
  value = local.us_regions
}

output "app_count" {
  value = length(local.apps)
}


output "cidrs" {
  value =local.cidrs
}


output "region" {
  value = local.region
}

output "is_primary_region" {
  value = local.is_primary
}

output "environment" {
  value = local.environment
}
