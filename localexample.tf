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
  reverse_sentence_1  = join("", reverse(split("", "Montreal bagels taste better at 3am.")))
  last_word_2         = element(split(" ", "Poutine should be a food group.") , length(split(" ", "poutine should be a good group.")) -1)
}
















locals {
  # Use the input variable
  quote = var.quote

  # 1. Convert to Uppercase
  upper_quote = upper(local.quote)

  # 2. Convert to Lowercase
  lower_quote = lower(local.quote)

  # 3. Get First 10 Characters
  short_quote = substr(local.quote, 0, 10)

  # 4. Reverse the String
  reversed = join("", reverse(split("", local.quote)))

  # 5. Replace "potholes" with "hotdogs"
  replaced = replace(local.quote, "potholes", "hotdogs")

  # 6. Check if it Contains "zip"
  has_zip = can(regex("zip", local.quote))

  # 7. Join with a List of Other City Quotes
  other_quotes = ["Toronto: City of condos.", "Vancouver: Rain and real estate."]
  joined_quotes = join(" | ", concat(local.other_quotes, [local.quote]))

  # 8. Split the Quote by Spaces
  words = split(" ", local.quote)

  # 9. Length of the Quote
  quote_length = length(local.quote)

  # 10. Add a Suffix to the Quote
  branded_quote = "${local.quote} #TrueStory"
}
