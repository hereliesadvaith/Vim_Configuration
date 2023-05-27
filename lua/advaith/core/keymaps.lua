vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness
-- vim maximizer
keymap.set("n", "tm", ":MaximizerToggle<CR>")
-- nvim tree
keymap.set("n", "tt", ":NvimTreeToggle<CR>")
-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
