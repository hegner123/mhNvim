return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        -- "j-hui/fidget.nvim",
        "olrtg/emmet-language-server",
    },
    config = function()
        local capabilities = vim.tbl_deep_extend(
            "force",
            {},
            vim.lsp.protocol.make_client_capabilities(),
            require("cmp_nvim_lsp").default_capabilities()
        )

        local on_attach = function(client, bufnr)
            -- Ensure bufnr is valid
            if not bufnr or type(bufnr) ~= "number" then
                bufnr = vim.api.nvim_get_current_buf()
            end

            if client.server_capabilities.documentFormattingProvider then
                vim.api.nvim_buf_set_var(bufnr, "formatexpr", "v:lua.vim.lsp.formatexpr()")
            end
        end

        -- require("fidget").setup({
        --     notification = {
        --         window = {
        --             winblend = 0,
        --         },
        --     },
        --     progress = {
        --         display = {
        --             progress_icon = { pattern = "dots", period = 1 },
        --         },
        --     },
        -- })
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "bashls", "clangd", "lua_ls", "pyright", "gopls", "intelephense",
                "html", "cssls", "tailwindcss", "yamlls", "zls",
            },
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup({
                        on_attach = on_attach,
                        capabilities = capabilities,
                    })
                end,
                ["lua_ls"] = function()
                    require("lspconfig").lua_ls.setup({
                        on_attach = on_attach,
                        capabilities = capabilities,
                        settings = {
                            Lua = {
                                runtime = { version = 'LuaJIT' },
                                diagnostics = { globals = { "vim" } },
                                workspace = { library = vim.api.nvim_get_runtime_file("", true) },
                                telemetry = { enable = false },
                            },
                        },
                    })
                end,
                ["emmet_ls"] = function()
                    require("lspconfig").emmet_ls.setup({
                        on_attach = on_attach,
                        capabilities = capabilities,
                        filetypes = { "html", "css", "javascriptreact", "typescriptreact" },
                    })
                end,
            },
        })

        vim.diagnostic.config({
            float = {
                focusable = false,
                scope = "line",
                border = "solid",
                source = "if_many",
            },
        })
    end,
}

