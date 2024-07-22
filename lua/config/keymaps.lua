-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("i", "jk", "<esc>")
keymap.set("n", "cs", ":w<Return>")
keymap.set("n", "cq", ":q<Return>")

keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Xoá từ
keymap.set("n", "dw", "vb_d")

-- Chọn tất cả
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

--hello
-- Tab mới
keymap.set("n", "te", "tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
keymap.set("n", "tn", ":tabnew<Return>", opts)

-- chia đôi màn hình
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Di chuyển giữa các màn hình
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sl", "<C-w>l")

-- Chỉnh kích thước màn hình
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- Run terminal in tab
keymap.set("n", "cm", ":term<Return>")

-- Exit terminal mode and go to normal mode
keymap.set("t", "jk", [[<C-\><C-n>]], opts)
