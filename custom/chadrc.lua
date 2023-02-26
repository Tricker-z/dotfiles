-- Chadrc overrides this file

local M = {}

M.options = {
  nvChad = {
    update_url = "https://github.com/NvChad/NvChad",
    update_branch = "main",
  },
}

M.ui = {
  -- hl = highlights
  hl_add = {},
  hl_override = {},
  changed_themes = {},
  theme_toggle = { "ayu-dark", "ayu_light" },
  theme = "ayu-dark", -- default theme
  transparency = false,
}

M.plugins = require "custom.plugins"


return M
