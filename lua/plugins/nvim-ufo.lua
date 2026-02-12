return {
  "kevinhwang91/nvim-ufo",
  dependencies = "kevinhwang91/promise-async",
  event = "UIEnter", -- needed for folds to load in time and comments being closed
  keys = {
    --{ "<leader>if", vim.cmd.UfoInspect, desc = " Fold info" },
  },
  init = function()
    -- INFO fold commands usually change the foldlevel, which fixes folds, e.g.
    -- auto-closing them after leaving insert mode, however ufo does not seem to
    -- have equivalents for `zr` and `zm` because there is no saved fold level.
    -- Consequently, the vim-internal fold levels need to be disabled by setting
    -- them to 99.
    vim.opt.foldlevel = 99
    vim.opt.foldlevelstart = 99
    vim.opt.foldcolumn = '0'
  end,
  opts = {
    -- when opening the buffer, close these fold kinds
    close_fold_kinds_for_ft = {
      default = {}, -- comment
      json = {},    -- array
      markdown = {},
      toml = {},
    },
    open_fold_hl_timeout = 800,
    provider_selector = function(_bufnr, ft, _buftype)
      -- ufo accepts only two kinds as priority, see https://github.com/kevinhwang91/nvim-ufo/issues/256
      local lspWithOutFolding = { "markdown", "zsh", "bash", "css", "python", "json" }
      if vim.tbl_contains(lspWithOutFolding, ft) then return { "treesitter", "indent" } end
      return { "lsp", "indent" }
    end,
  },
}
