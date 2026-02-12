return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {},
    dependencies = {
      "MunifTanjim/nui.nvim",
      --- "rcarriga/nvim-notify", -- too noisy
    },
    config = function()
      require("noice").setup({
        lsp = {
          -- override rendering so that **cmp** (and others) use Treesitter
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true, -- needs hrsh7th/nvim-cmp
          },
        },
        presets = {
          bottom_search = true,         -- use a classic bottom cmdline for search
          command_palette = true,       -- position the cmdline and popupmenu together
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false,           -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = true,        -- add a border to hover docs and signature help
        },
        routes = {
          -- DOCS https://github.com/folke/noice.nvim#-routes
          -- write/deletion messages
          { filter = { event = "msg_show", find = "%d+B written$" },              view = "mini" },
          { filter = { event = "msg_show", find = "%d+L, %d+B$" },                view = "mini" },
          { filter = { event = "msg_show", find = "%-%-No lines in buffer%-%-" }, view = "mini" },

          -- search
          { filter = { event = "msg_show", find = "^E486: Pattern not found" },   view = "mini" },
          { filter = { event = "msg_show", find = "^[/?]." },                     skip = true },

          -- output from `:Inspect` for easier copying
          { filter = { event = "msg_show", find = "Treesitter.*- @" },            view = "popup" },

          -- FIX https://github.com/artempyanykh/marksman/issues/348
          { filter = { event = "notify", find = "^Client marksman quit with" },   skip = true },

          -- code actions
          { filter = { event = "notify", find = "No code actions available" },    skip = true },
        },
        views = {
          cmdline_popup = {
            position = {
              row = "95%",
              col = 3,
            },
            border = {
              style = "single",
              padding = { 1, 2 },
            },
            filter_options = {},
            win_options = {
              winhighlight = "NormalFloat:NoiceFloat,FloatBorder:NoiceBorder",
            },
          },
          commands = {
            all = {
              view = "split",
            },
            filter = {
              ["not"] = {
                any = {
                  { find = "^/" }, -- skip search messages
                  {                -- skip trace level messages
                    event = "notify",
                    cond = function(msg)
                      return msg.level and msg.level == "trace"
                    end,
                  },
                },
              },
            },
          },
          --mini = {},
          mini = {
            timeout = 3000,
            zindex = 45,
            format = { "{title} ", "{message}" }, -- remove "{level}"
          },
        },
      })
    end,
  },
}
