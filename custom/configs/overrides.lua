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
  }
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
    },
  },
}

M.telescope = {
  defaults = {
    prompt_prefix = "󰱽  ",
  },
}

return M
