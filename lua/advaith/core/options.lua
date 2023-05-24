local opt = vim.opt -- for concisenses
-- line numbers
opt.relativenumber = true
opt.number = true
-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
-- line wrapping
opt.wrap = false
-- search settings
opt.ignorecase = true
opt.smartcase = true
-- backspace
opt.backspace = "indent,eol,start"
-- split windows
opt.splitright = true
opt.splitbelow = true
-- clipboard
opt.clipboard:append("unnamedplus")

opt.iskeyword:append("-")
