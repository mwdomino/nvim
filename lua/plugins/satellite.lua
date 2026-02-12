return {
  "lewis6991/satellite.nvim",
  event = "VeryLazy",
  opts = {
    winblend = 10, -- slight transparency
    handlers = {
      cursor = { enable = false },
      marks = { enable = false },
      search = { enable = false },
    },
  },
}
