return {
  { "nvim-tree/nvim-web-devicons" },
  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      require("nvim-tree").setup({
        sync_root_with_cwd = true,
        respect_buf_cwd = true,
        sort_by = "case_sensitive",
        hijack_netrw = true,
        hijack_cursor = true,
        view = {
          width = 35,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = false,
        },
        update_focused_file = {
          enable = true,
          update_root = true
        },
      })

      vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", {})
    end
  },
}
