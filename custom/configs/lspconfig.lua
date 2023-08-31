local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "pyright" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,

  root_dir = function(fname)
    local root_files = {
      "pyproject.toml",
      "requirements.txt",
      "pyrightconfig.json",
      "Pipfile",
      "README.md",
    }
    return lspconfig.util.root_pattern(unpack(root_files))(fname)
  end,

  settings = {
    pyright = {
      autoSearchPaths = true,
      diagnosticMode = "workspace",
      typeCheckingMode = "off",
    },
  },
}
