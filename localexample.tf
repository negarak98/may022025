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
  sentec_1_split = split(" , ", "Montreal bagels taste better at 3am.")
}


locals{
  reverse_sentence_1  = join("", reverse(split("", "Montreal bagels taste better at 3am.")))
  last_word_2         = element(split(" ", "Poutine should be a food group.") , length(split(" ", "poutine should be a good group.")) -1)
}
















