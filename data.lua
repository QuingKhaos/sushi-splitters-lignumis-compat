local sushi_splitters = require("__sushi-splitters-lib__.lib")

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
