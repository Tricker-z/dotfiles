---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}


M.nvterm = {
  plugin = true,

  t = {
    ["<C-`>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    }
  },

  n = {
    ["<C-`>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    }
 }
}

M.chatgpt = {
  n = {
    ["<leader>ge"] = {
      function()
        require("chatgpt").edit_with_instructions()
      end,
      "Edit with instructions",
    }
  },
}

return M
