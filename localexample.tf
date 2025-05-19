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
  quote = var.quote

  upper_quote     = upper(local.quote)
  lower_quote     = lower(local.quote)
  short_quote     = substr(local.quote, 0, 10)
  reversed        = join("", reverse(split("", local.quote)))
  replaced        = replace(local.quote, "potholes", "hotdogs")
  has_zip         = can(regex("zip", local.quote))
  other_quotes    = ["Toronto: City of condos.", "Vancouver: Rain and real estate."]
  joined_quotes   = join(" | ", concat(local.other_quotes, [local.quote]))
  words           = split(" ", local.quote)
  quote_length    = length(local.quote)
  branded_quote   = "${local.quote} #TrueStory"
}
