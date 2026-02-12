return {
  {
    "nvim-zh/colorful-winsep.nvim",
    --cond = false,
    event = { "WinLeave" },
    config = function()
      require("colorful-winsep").setup({
        hi = {
          --bg = "#565761",
          --fg = "#282a36",
          fg = "#565761",
        },
        symbols = { "━", "┃", "┏", "┓", "┗", "┛" },
      })
    end,
  },
}
