vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.deprecation_warnings = false

vim.o.clipboard = 'unnamedplus'
-- Basic Vim options
vim.g.mapleader = " "  -- Set leader key to space
vim.g.maplocalleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true

-- Keymaps
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Better escape
keymap.set("i", "jk", "<ESC>", opts)
keymap.set("i", "kj", "<ESC>", opts)

-- Save and quit
keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })
keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit" })
keymap.set("n", "<leader>Q", ":qa!<CR>", { desc = "Quit all without saving" })
keymap.set("n", "<leader>x", ":x<CR>", { desc = "Save and quit" })

-- File explorer
keymap.set("n", "<leader>e", ":Ex<CR>", { desc = "File explorer" })
keymap.set("n", "<leader>E", ":NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })

-- Window navigation
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Resize windows
keymap.set("n", "<C-Up>", ":resize +2<CR>", opts)
keymap.set("n", "<C-Down>", ":resize -2<CR>", opts)
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal" })
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "Close split" })

-- Buffer navigation
keymap.set("n", "<Tab>", ":bnext<CR>", { desc = "Next buffer" })
keymap.set("n", "<S-Tab>", ":bprevious<CR>", { desc = "Previous buffer" })
keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "Delete buffer" })
keymap.set("n", "<leader>bl", ":buffers<CR>", { desc = "List buffers" })

-- Better indenting
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

-- Move text up and down
keymap.set("n", "<A-j>", ":m .+1<CR>==", opts)
keymap.set("n", "<A-k>", ":m .-2<CR>==", opts)
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Stay in visual mode when indenting
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

-- Better paste (doesn't replace clipboard)
keymap.set("v", "p", '"_dP', opts)

-- Clear search highlighting
keymap.set("n", "<leader>nh", ":nohlsearch<CR>", { desc = "Clear search highlights" })

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

-- Better line navigation
keymap.set("n", "H", "^", { desc = "Go to start of line" })
keymap.set("n", "L", "$", { desc = "Go to end of line" })

-- Center screen when scrolling
keymap.set("n", "<C-d>", "<C-d>zz", opts)
keymap.set("n", "<C-u>", "<C-u>zz", opts)
keymap.set("n", "n", "nzzzv", opts)
keymap.set("n", "N", "Nzzzv", opts)

-- Quick fix list navigation
keymap.set("n", "<leader>cn", ":cnext<CR>", { desc = "Next quickfix" })
keymap.set("n", "<leader>cp", ":cprev<CR>", { desc = "Previous quickfix" })

-- Line numbers toggle
keymap.set("n", "<leader>ln", ":set number!<CR>", { desc = "Toggle line numbers" })
keymap.set("n", "<leader>lr", ":set relativenumber!<CR>", { desc = "Toggle relative numbers" })

-- Terminal
keymap.set("n", "<leader>tt", ":terminal<CR>", { desc = "Open terminal" })
keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Ansible/YAML specific (optional)
keymap.set("n", "<leader>ay", ":set filetype=yaml.ansible<CR>", { desc = "Set Ansible YAML" })
