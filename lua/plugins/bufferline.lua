return {
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    mode = "tabs",
    config = function()
      require("bufferline").setup()
      vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", {})
      vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", {})
    end
  },
  { 'famiu/bufdelete.nvim' },
  {
    "tiagovla/scope.nvim",
    config = function()
      require("scope").setup()
    end
  }
}
