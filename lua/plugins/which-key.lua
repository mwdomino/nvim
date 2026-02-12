return {
  "folke/which-key.nvim",
  lazy = true,
  event = "VeryLazy",
  opts = {
    defaults = {
      { "<leader>b", group = "+buffer" },
      { "<leader>c", group = "+code" },
      { "<leader>f", group = "+file" },
      { "<leader>g", group = "+goto" },
      { "<leader>h", group = "+help" },
      { "<leader>o", group = "+open" },
      { "<leader>q", group = "+quit" },
      { "<leader>w", group = "+window" },
    },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    wk.add(opts.defaults)
  end,
  keys = {
    { "<leader>/",  "<cmd>Telescope live_grep<cr>", desc = "Search project" },
    --- buffer
    { "<leader>bb", "<cmd>Telescope buffers<cr>",   desc = "Switch Buffer" },
    { "<leader>bd", "<cmd>bd<cr>",                  desc = "Delete Buffer" },
    { "<leader>bo", "<cmd>%bd|e#<cr>",              desc = "Close other buffers" },
    { "<leader>bx", "<cmd>Scratch<cr>",             desc = "Scratch Buffer" },
    --- code
    { "<leader>ca", vim.lsp.buf.code_action,        desc = "Code Actions" },
    { "<leader>cb", "<cmd>Gitsigns blame_line<cr>", desc = "Git Blame" },
    { "<leader>cf", vim.lsp.buf.format,             desc = "Code Format" },
    { "<leader>ch", "<cmd>nohlsearch<cr>",          desc = "nohlsearch" },
    { "<leader>ck", vim.diagnostic.open_float,          desc = "open lsp diagnostic" },
    { "<leader>co", function() vim.lsp.buf.code_action({ context = { only = { "source.organizeImports" } }, apply = true }) end, desc = "Organize Imports" },
    {
      "<leader>cl",
      "<cmd>lua vim.g.cmptoggle = not vim.g.cmptoggle<CR>",
      desc = "LSP Toggle",
    },
    --- file
    { "<leader>fb", "<cmd>Telescope file_browser<cr>", desc = "File Browser" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>",   desc = "Find File" },
    { "<leader>pf", "<cmd>Telescope find_files<cr>",   desc = "Find File" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>",    desc = "Live Grep" },
    { "<leader>fr", "<cmd>Telescope oldfiles<cr>",     desc = "Recent Files" },
    { "<leader>fn", "<cmd>ene <BAR> startinsert <cr>", desc = "New File" },
    {
      "<leader>fp",
      "<cmd>Telescope find_files search_dirs=~/.config/nvim<cr>",
      desc = "Configuration",
    },
    --- goto
    { "<leader>gg",    "<cmd>Neogit<cr>",                         desc = "Neogit" },
    { "<leader>ga",    vim.lsp.buf.code_action,                   desc = "Code Actions" },
    { "<leader>gh",    vim.lsp.buf.hover,                         desc = "Display Help" },
    { "<leader>gr",    "<cmd>Telescope lsp_references<cr>" },
    { "<leader>gd",    "<cmd>Telescope lsp_definitions<cr>",      desc = "Code Definition" },
    { "<leader>gD",    "<cmd>Telescope lsp_type_definitions<cr>" },
    { "<leader>gt",    "<cmd>gt<cr>",                             desc = "Goto Next Tabpage" },
    { "<leader>gT",    "<cmd>gT<cr>",                             desc = "Goto Prev Tabpage" },
    { "<leader>g1",    "1gt<cr>",                                 desc = "Goto Tabpage 1" },
    { "<leader>g2",    "2gt<cr>",                                 desc = "Goto Tabpage 2" },
    { "<leader>g3",    "3gt<cr>",                                 desc = "Goto Tabpage 3" },
    { "<leader>g4",    "4gt<cr>",                                 desc = "Goto Tabpage 4" },
    { "<leader>g5",    "5gt<cr>",                                 desc = "Goto Tabpage 5" },
    { "<leader>g6",    "6gt<cr>",                                 desc = "Goto Tabpage 6" },
    { "<leader>g7",    "7gt<cr>",                                 desc = "Goto Tabpage 7" },
    { "<leader>g8",    "8gt<cr>",                                 desc = "Goto Tabpage 8" },
    { "<leader>g9",    "9gt<cr>",                                 desc = "Goto Tabpage 9" },
    --- help
    { "<leader>hh",    "<cmd>Noice history<cr>",                  desc = "history" },
    { "<leader>he",    "<cmd>Noice errors<cr>",                   desc = "errors" },
    { "<leader>hm",    "<cmd>Noice messages<cr>",                 desc = "messages" },
    --- open
    { "<leader>op",    "<cmd>NvimTreeToggle<cr>",                 desc = "Nvim Tree" },
    --- quit
    { "<leader>qq",    "<cmd>qa!<cr>",                            desc = "Quit without saving" },
    --- window
    { "<leader>wc",    "<cmd>close<cr>",                          desc = "Close window" },
    { "<leader>wd",    "<cmd>close<cr>",                          desc = "Close window" },
    { "<leader>wi",    "<C-w>o",                                  desc = "Close all other windows" },
    { "<leader>wh",    "<C-w>h",                                  desc = "Move window left" },
    { "<leader>wl",    "<C-w>l",                                  desc = "Move window right" },
    { "<leader>wk",    "<C-w>k",                                  desc = "Move window up" },
    { "<leader>wj",    "<C-w>j",                                  desc = "Move window right" },
    { "<leader>w=",    "<C-w>=",                                  desc = "Balance windows" },
    { "<leader>w<",    "<cmd>resize -5<cr>",                      desc = "Decrease width" },
    { "<leader>w>",    "<cmd>resize +5<cr>",                      desc = "Increase width" },
    { "<leader>wm",    "<C-w>|<C-w>_",                            desc = "Maximize window" },
    { "<leader>wn",    "<cmd>enew<cr>",                           desc = "New buffer in window" },
    { "<leader>wu",    "<C-w>=",                                  desc = "Undo maximize" },
    { "<leader>ws",    "<cmd>split<cr>",                          desc = "Horizontal split" },
    { "<leader>wv",    "<cmd>vsplit<cr>",                         desc = "Vertical split" },
  },
}
