local M = {}

M.ui = {
  theme = "aquarium",
}

M.plugins = {

  ["github/copilot.vim"] = {},

  ["goolord/alpha-nvim"] = {
    disable = false,
  },

  ["nvim-telescope/telescope.nvim"] = {
    override_options = {
      defaults = {
       prompt_prefix = "󰱽  ",
      },
    },
  },

  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- shell
        "shfmt",
        "shellcheck",

        -- python
        "python-lsp-server",
      },
    },
  },

  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = {
      ensure_installed = {
        "c",
        "cpp",
        "python",
        "java",
        "rust",
      },
    },
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

}

return M
