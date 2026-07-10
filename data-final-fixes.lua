local khaoslib_recipe = require("__khaoslib__.recipe")

-- Add copper cable icons to original recipes
if mods["wood-logistics"] then
  khaoslib_recipe:load("sushi-wood-splitter")
    :set_icons({
      {icon = "__sushi-splitters__/graphics/icons/sushi-wood-splitter.png", icon_size = 32},
      {icon = "__base__/graphics/icons/copper-cable.png", icon_size = 64, scale = 0.25, shift = {8, 8}},
    })
    :commit()

  khaoslib_recipe:load("sushi-wood-splitter-upgrade")
    :set_icons({
      {icon = "__sushi-splitters__/graphics/icons/sushi-wood-splitter.png", icon_size = 32},
      {icon = "__base__/graphics/icons/copper-cable.png", icon_size = 64, scale = 0.25, shift = {8, 8}},
    })
    :commit()
end
