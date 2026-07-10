local flib_locale = require("__flib__.locale")
local khaoslib_recipe = require("__khaoslib__.recipe")
local khaoslib_technology = require("__khaoslib__.technology")

-- Create recipe copies with gold cable instead of copper cable
khaoslib_recipe.copy("sushi-wood-splitter", "gold-sushi-wood-splitter")
  :set {localised_name = flib_locale.of("recipe", "sushi-wood-splitter")}
  :replace_ingredient("copper-cable", function (ingredient)
    ingredient.name = "gold-cable"
    return ingredient
  end)
  :set_icons({
    {icon = "__sushi-splitters__/graphics/icons/sushi-wood-splitter.png", icon_size = 32},
    {icon = "__lignumis-assets__/graphics/icons/gold-cable.png", icon_size = 64, scale = 0.25, shift = {8, 8}},
  })
  :commit()

khaoslib_recipe.copy("sushi-wood-splitter-upgrade", "gold-sushi-wood-splitter-upgrade")
  :set {localised_name = flib_locale.of("recipe", "sushi-wood-splitter")}
  :replace_ingredient("copper-cable", function (ingredient)
    ingredient.name = "gold-cable"
    return ingredient
  end)
  :set_icons({
    {icon = "__sushi-splitters__/graphics/icons/sushi-wood-splitter.png", icon_size = 32},
    {icon = "__lignumis-assets__/graphics/icons/gold-cable.png", icon_size = 64, scale = 0.25, shift = {8, 8}},
  })
  :commit()

khaoslib_technology:load("wood-logistics")
  :add_unlock_recipe("gold-sushi-wood-splitter")
  :add_unlock_recipe("gold-sushi-wood-splitter-upgrade")
  :commit()
