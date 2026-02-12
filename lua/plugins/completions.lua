return {
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")
      vim.g.cmptoggle = true

      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        enabled = function()
          return vim.g.cmptoggle
        end,
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        window = {
          completion = {
            border = 'single',
            winhighlight =
            'Normal:TelescopeNormal,NormalFloat:TelescopeNormal,FloatBorder:TelescopeBorder,CursorLine:TelescopeSelection,PmenuSel:TelescopeSelection',
          },
          documentation = {
            border = 'single',
            winhighlight =
            'Normal:TelescopeNormal,NormalFloat:TelescopeNormal,FloatBorder:TelescopeBorder,CursorLine:TelescopeSelection,PmenuSel:TelescopeSelection',
          }
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<Tab>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "copilot" },
          { name = "nvim_lsp" },
          { name = "luasnip" },
        }, {
          { name = "buffer" },
        }),
      })
    end,
  },
}
