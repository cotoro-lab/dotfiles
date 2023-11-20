-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { silent = true }

keymap.set("i", "jj", "<Esc>")
keymap.set("i", "<C-h>", "<C-o>h")
keymap.set("i", "<C-j>", "<C-o>j")
keymap.set("i", "<C-k>", "<C-o>k")
keymap.set("i", "<C-l>", "<C-o>l")

keymap.set("n", "wh", "<C-w>h")
keymap.set("n", "wj", "<C-w>j")
keymap.set("n", "wk", "<C-w>k")
keymap.set("n", "wl", "<C-w>l")
keymap.set("n", "wv", "<C-w>v")
keymap.set("n", "ws", "<C-w>s")
keymap.set("n", "<S-v>", "<C-v>")
keymap.set("n", "<C-l>", "0v$h")
keymap.set("n", "<C-i>", "<Cmd>bprev<CR>")
keymap.set("n", "<C-o>", "<Cmd>bnext<CR>")
keymap.set("n", "<S-h>", "<S-h>", opts)
keymap.set("n", "<S-l>", "<S-l>", opts)


keymap.set("n", "<C-b>", "<Cmd>Explore<CR>")
