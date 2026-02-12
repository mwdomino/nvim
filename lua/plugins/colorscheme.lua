return {
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    config = function()
      local has_truecolor = vim.opt.termguicolors:get()

      local c = {
        bg = has_truecolor and "#282A36" or "#242424",
        fg = "#F8F8F2",
        bg_alt = has_truecolor and "#1E2029" or "#1C1C1C",
        bg_alt2 = "#2D2F3D",
        menu = has_truecolor and "#1E2029" or "#1C1C1C",
        visual = "#3E4452",
        comment = "#565761",
        selection = "#292A36",
        orange = "#FDC38E",
        black = "#1C1C1C",
        white = "#F8F8F2",
        green = "#50FA7B",
        gray = "#565761",
        purple = "#BD93F9",
        yellow = "#F1FA8C",
        pink = "#E48CC1",
        red = "#FF5555",
        cyan = "#8be9fd",
        bright_red = "#FF6E6E",
        bright_green = "#69FF94",
        bright_yellow = "#FFFFA5",
        bright_blue = "#D6ACFF",
        bright_magenta = "#E48CC1",
        bright_cyan = "#C69AFF",
        bright_white = "#FFFFFF",
        bright_pink = "#ffeaea",
        dark_green = "#285e3b",
        dark_red = "#c22121",
        dark_purple = "#3D3159",
        gutter_fg = "#4B5263",
        nontext = "#3B4048",
        base5 = "#6272a4",
      }

      require("dracula").setup({
        colors = c,

        overrides = {
          Function = { fg = c.green },
          LineNr = { fg = has_truecolor and c.base5 or c.gray },
          CurSearch = { fg = c.orange, bg = c.comment },
          CursorLine = { bg = c.bg_alt },
          CursorLineNr = { bg = c.bg_alt },

          NormalFloat = { bg = c.bg_alt },
          FloatBorder = { bg = c.bg_alt },
          FloatTitle = { bg = c.bg_alt },

          CmpItemAbbr = { bg = c.menu },
          CmpItemAbbrMatch = { fg = c.green },
          CmpItemAbbrMatchFuzzy = { fg = c.green },
          PmenuSel = { bg = c.dark_purple },

          ["@attribute"] = { fg = c.purple },
          ["@module"] = { fg = c.purple },
          ["@property"] = { fg = c.fg },
          ["@variable"] = { fg = c.fg },
          ["@variable.member"] = { fg = c.cyan },
          ["@variable.parameter"] = { fg = c.fg },
          ["@keyword.function"] = { fg = c.pink },
          ["@type"] = { fg = c.purple },
          ["@type.builtin"] = { fg = c.pink },
          ["@constant.builtin"] = { fg = c.cyan },
          ["@operator"] = { fg = c.purple },
          ["@boolean"] = { fg = c.cyan },

          NvimTreeNormal = { fg = c.fg, bg = c.menu },
          NvimTreeVertSplit = { fg = c.bg, bg = c.menu },
          NvimTreeRootFolder = { fg = c.yellow, bold = true },
          NvimTreeGitDirty = { fg = c.purple },
          NvimTreeFolderIcon = { fg = c.gray },
          NvimTreeEmptyFolderName = { fg = c.fg },
          NvimTreeGitFileDirtyHL = { fg = c.purple },


          MiniStarterCurrent = { fg = c.fg },
          MiniStarterFooter = { fg = c.black },
          MiniStarterHeader = { fg = c.pink },
          MiniStarterInactive = { fg = c.gray },
          MiniStarterItem = { fg = c.gray },
          MiniStarterItemBullet = { fg = c.gray },
          MiniStarterItemPrefix = { fg = c.yellow },
          MiniStarterSection = { fg = c.purple },
          MiniStarterQuery = { fg = c.fg },

          NoiceSplit = { bg = c.bg_alt },
          NoicePopup = { bg = c.bg_alt },
          NoiceFormatEvent = { fg = c.fg, bg = c.bg_alt },
          NoiceFormatKind = { fg = c.fg, bg = c.bg_alt },
          NoiceFloat = { bg = c.bg_alt },
          NoiceBorder = { bg = c.bg_alt },

          DiagnosticSignInfo = { fg = c.fg },
          DiagnosticSignHint = { fg = c.fg },

          TelescopeSelection = { bg = c.dark_purple },
          TelescopeNormal = { bg = c.bg_alt },
          TelescopePromptTitle = { fg = c.purple, bg = c.bg_alt },
          TelescopePromptPrefix = { fg = c.pink, bg = c.bg_alt },
          TelescopePromptNormal = { fg = c.green, bg = c.bg_alt },
          TelescopePromptBorder = { bg = c.bg_alt },
          TelescopeResultsTitle = { fg = c.purple, bg = c.bg_alt },
          TelescopeResultsBorder = { bg = c.bg_alt },
          TelescopeResultsNormal = { bg = c.bg_alt },
          TelescopePreviewTitle = { fg = c.purple, bg = c.bg_alt },
          TelescopePreviewBorder = { bg = c.bg_alt },
          TelescopePreviewNormal = { bg = c.bg_alt },

          NeogitFilePath = { fg = c.cyan },
          NeogitDiffAddCursor = { fg = c.bright_green, bg = c.dark_green, bold = true, },
          NeogitDiffAdd = { fg = c.bright_green, bg = c.dark_green, },
          NeogitDiffAddHighlight = { fg = c.black, bg = c.green, }, -- bold = true, },
          NeogitDiffDelete = { fg = c.bright_pink, bg = c.dark_red },
          NeogitDiffDeleteCursor = { fg = c.bright_pink, bg = c.dark_red, bold = true, },
          NeogitDiffDeleteHighlight = { fg = c.black, bg = c.red },

          ColorColumn = { bg = c.bg_alt2 },
        },
      })

      vim.cmd.colorscheme("dracula")
    end,
  },
}
