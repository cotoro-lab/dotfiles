-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local apikeymap = vim.api.nvim_set_keymap
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
keymap.set("n", "gg", "gg0")
keymap.set("n", "G", "G$")


keymap.set("n", "<C-b>", "<Cmd>NERDTreeToggle<CR>")

keymap.set("n", "<M-?>", "<Cmd>Copilot panel<CR>")
apikeymap("n", "<M-/>", ":lua execute_copilot_chat()<CR>", {})
apikeymap("i", "<M-i>", 'copilot#Accept("\\<CR>")', { silent = true, expr = true })

keymap.set("n", "<M-i>", ":edit ++encoding=sjis<CR>")
keymap.set("n", "<M-I>", ":e ++enc=utf-8<CR>")


--  =========================================================
-- Functions
--  =========================================================

--  ----------------------------------------------------------
-- ユーザー入力を受け取りCopilotChatコマンドを実行する関数
function execute_copilot_chat()
  -- 入力をプロンプトで受け取る
  local user_input = vim.fn.input("CopilotChat: ")

  if user_input ~= "" then
    -- CopilotChatコマンドを実行
    vim.cmd("CopilotChat " .. user_input)
  end
end
--  ----------------------------------------------------------
