return {
    
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
            }
        }
    },

}