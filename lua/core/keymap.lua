vim.g.mapleader = ","
local keymap = vim.keymap.set

-- move lines in visual mode
keymap("x", "K", ":m '<-2<CR>gv=gv")
keymap("x", "J", ":m '>+1<CR>gv=gv")

keymap("n", "J", "mzJ`z")                             --> 'J' doesn't move the cursor
keymap("n", "<leader>nh", ":noh<CR>")                 --> no highlight
keymap("n", "<leader>so", ":so %<CR>")                --> source
keymap("n", "<leader>sp", ":so %<CR>:PackerSync<CR>") --> sync packer
keymap("n", "<leader>qq", ":q<CR>")                   --> quit
--keymap("n", "<C-W>m", ":MaximizerToggle<CR>")         --> maximize split
keymap("n", "<leader>e", ":Ex<CR>")                   --> netrw

-- some templates
keymap("n", "<leader>c", ":r~/.config/nvim/templates/main.c<CR>k\"_dd5jl")
keymap("n", "<leader>h", ":r~/.config/nvim/templates/main.h<CR>k\"_ddV3j:s/TEMPLATE/")

-- copy to the void register instead of the main one
keymap("n", "<leader>d", "\"_d")
keymap("v", "<leader>d", "\"_d")
keymap("x", "<leader>p", "\"_dP")

-- copy/paste to the clipboard register instead of the main one
keymap("n", "<leader>y", "\"+y")
keymap("n", "<leader>Y", "\"+Y")
keymap("v", "<leader>y", "\"+y")
keymap("n", "<leader>p", "\"+p")
keymap("n", "<leader>P", "\"+P")
keymap("v", "<leader>p", "\"+p")

-- buffer related
keymap("n", "<leader>bn", ":bnext<CR>")
keymap("n", "<leader>bp", ":bprevious<cr>")
keymap("n", "<leader>bd", ":bdelete<CR>")
keymap("n", "<tab>", "<C-6>") --> swap between previous and current buffer

-- terminal related
local open_terminal = "<C-W>s<C-W>2+<C-W>j:te<CR>i"
keymap("n", "<leader>t", open_terminal)
keymap("t", "<leader>q", "<C-\\><C-N>:q<CR>")

-- telescope
local telescope_builtin = require("telescope.builtin")
local telescope_ivy     = require("telescope.themes").get_ivy
keymap("n", "<leader>ff", function() telescope_builtin.find_files(telescope_ivy({ layout_config = { height = 0.5 } })) end)
keymap("n", "<leader>fs", function() telescope_builtin.live_grep( telescope_ivy({ layout_config = { height = 0.5 } })) end)

-- build
keymap("n", "<leader>bb", ":!build<CR>")
keymap("n", "<leader>br", ":!run<CR>")
