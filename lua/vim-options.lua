vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

vim.opt.autoread = true -- auto read file when changed outside of vim

vim.opt.swapfile = false

vim.o.sessionoptions = "buffers,curdir,folds,globals,tabpages,winpos,winsize"

vim.opt.conceallevel = 1 -- obsidian

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.wo.number = true
vim.opt.relativenumber = true

vim.o.termguicolors = true
vim.o.cursorline = true

-- Set colorcolumn for multiple columns
vim.opt.colorcolumn = "80,120"

vim.hl = vim.highlight

-- Set clipboard to system clipboard
if vim.fn.system('uname -s'):match('Darwin') then
  vim.opt.clipboard = 'unnamed'     -- macOS
else
  vim.opt.clipboard = 'unnamedplus' -- Linux
end
