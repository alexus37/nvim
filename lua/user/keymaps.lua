local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":NvimTreeFindFileToggle<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)

--- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<leader>x", ":Bdelete<CR>", opts)

--- git signs hunk navigation
keymap("n", "<leader>[", ":Gitsigns prev_hunk<CR>", opts)
keymap("n", "<leader>]", ":Gitsigns next_hunk<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<C-S-j>", ":m .+1<CR>==", opts)
keymap("v", "<C-S-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- copy text system wide
keymap("v", "<leader>c", ':OSCYank<CR>', opts)
keymap("n", "<leader>c", ':OSCYankReg %<CR>', opts)


-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

keymap("n", "<C-p>", ":Telescope find_files <CR>", opts)
keymap("n", "<leader>R", ":Telescope command_history<CR>", opts)
keymap("n", "<leader>r", ":Telescope grep_string<CR>", opts)
keymap("n", "<leader>t", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>g", ":Telescope git_status<CR>", opts)


-- insert newline without leaving normal_mode
keymap("n", "<leader>o", "o<ESC>", opts)
keymap("n", "<leader>O", "O<ESC>", opts)
keymap("n", "<leader>d", "\"_dd<CR>", opts)

-- create terminals
keymap("n", "<leader>n", ":ToggleTerm direction=horizontal <CR>", opts)
keymap("n", "<leader>m", ":ToggleTerm direction=vertical size=80<CR>", opts)
