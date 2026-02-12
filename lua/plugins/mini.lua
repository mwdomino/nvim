return {
  {
    "echasnovski/mini.ai", -- extend around and inside
    config = function()
      require("mini.ai").setup()
    end,
  },
  {
    "echasnovski/mini.files",
    version = "*",
    dependencies = {
      "echasnovski/mini.icons",
    },
    config = function()
      require("mini.files").setup({
        windows = {
          preview = true,
        },
        mappings = {
          go_in_plus = "<cr>",
          close = "<esc>",
        },
      })
    end,
  },
  {
    "echasnovski/mini.starter",
    config = function()
      local starter = require("mini.starter")

      --https://github.com/echasnovski/mini.nvim/blob/main/doc/mini-starter.txt
      starter.setup({
        content_hooks = {
          starter.gen_hook.adding_bullet(),
          starter.gen_hook.aligning("center", "center"),
          --starter.gen_hook.indexing("all"),
        },
        items = {
          starter.sections.recent_files(5, false, false),
          --starter.sections.telescope(),
          --starter.sections.builtin_actions(),
        },
        header = "Make cool stuff.",
        footer = "",
      })

      vim.api.nvim_create_autocmd("User", {
        pattern = "MiniStarterOpened",
        callback = function()
          local opts = { buffer = true }
          vim.keymap.set("n", "j", function()
            starter.update_current_item("next")
          end, opts)
          vim.keymap.set("n", "k", function()
            starter.update_current_item("prev")
          end, opts)
        end,
      })
    end,
  },
  {
    "echasnovski/mini.comment",
    config = function()
      local comment = require("mini.comment")
      comment.setup()
    end,
  },
}
