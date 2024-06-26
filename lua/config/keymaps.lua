-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- Telescope
map("n", "<leader>tf", require("telescope").extensions.flutter.commands, { desc = "Flutter Commands" })
-- Window resize
map("n", "<C-S-h>", "<C-w><")
map("n", "<C-S-l>", "<C-w>>")
map("n", "<C-S-j>", "<C-w>-")
map("n", "<C-S-k>", "<C-w>+")
-- switching tabs
map("n", "<C-,>", ":tabprev<cr>")
map("n", "<C-.>", ":tabnext<cr>")
