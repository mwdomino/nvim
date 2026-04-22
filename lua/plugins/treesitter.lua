return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      -- Add the runtime/ subdirectory to rtp so neovim finds queries
      local ts_path = vim.fn.stdpath("data") .. "/lazy/nvim-treesitter"
      vim.opt.rtp:append(ts_path .. "/runtime")

      require("nvim-treesitter").setup({
        auto_install = true,
      })

      -- Enable treesitter highlighting for all filetypes with a parser
      vim.api.nvim_create_autocmd("FileType", {
        callback = function()
          pcall(vim.treesitter.start)
        end,
      })

    end,
  },
}
