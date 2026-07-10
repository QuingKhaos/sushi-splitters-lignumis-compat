local sushi_splitters = require("__sushi-splitters-lib__.lib")

-- If wooden logistic is installed, don't add the wood splitter, since it is already added by the original sushi splitters mod
if not mods["wood-logistics"] then
  sushi_splitters.create_sushi_splitter {
    name = "wood-splitter",
    icons = {
      {icon = "__sushi-splitters__/graphics/icons/sushi-wood-splitter.png", icon_size = 32},
    },
    recipe_icons = {
      {icon = "__sushi-splitters__/graphics/icons/sushi-wood-splitter.png", icon_size = 32},
      {icon = "__base__/graphics/icons/copper-cable.png", icon_size = 64, scale = 0.25, shift = {8, 8}},
    },
  }
end
