return {
  "jarrodb/projectile.nvim",
  --dir = "~/.local/dev/projectile.nvim",
  --dev = true,
  dependencies = {
    "tiagovla/scope.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("projectile").setup({
    })
  end,
}
