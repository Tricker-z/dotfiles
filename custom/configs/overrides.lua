local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "c",
    "cpp",
    "python",
    "java",
    "javascript",
    "lua",
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- python
    "pyright",
    "flake8",
    "autopep8",
    "black",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },

      glyphs = {
        folder = {
          default = "󰉋",
          open = "",
        },
      },
    },
  },
}

M.telescope = {
  defaults = {
    prompt_prefix = "󰱽  ",
  },
}

M.nvimcmp = {
  mapping = {
    -- disable  tab
    ["<Tab>"] = function(callback)
      callback()
    end,
    ["<S-Tab>"] = function(callback)
      callback()
    end,
    -- use Up and down for cycling completion
    ["<Down>"] = require("cmp").mapping(function(fallback)
      local cmp = require "cmp"
      if cmp.visible() then
        cmp.select_next_item()
      elseif require("luasnip").expand_or_jumpable() then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),
    ["<Up>"] = require("cmp").mapping(function(fallback)
      local cmp = require "cmp"
      if cmp.visible() then
        cmp.select_prev_item()
      elseif require("luasnip").jumpable(-1) then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),
  },
}

return M
