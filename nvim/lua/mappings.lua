require "nvchad.mappings"



local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

local M = {}

M.general = {
  n = {
    -- Các phím tắt khác
    ["<leader>ls"] = {
      function()
        local Terminal = require("toggleterm.terminal").Terminal
        local live_server = Terminal:new({ cmd = "live-server", hidden = true })
        live_server:toggle()
      end,
      "Start Live Server",
    },
  },
}

return M

