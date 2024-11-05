return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp-signature-help",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-nvim-lsp-document-symbol",
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "j-hui/fidget.nvim",
        "olrtg/emmet-language-server"
    },

    config = function()
        local cmp = require('cmp')
        local cmp_lsp = require("cmp_nvim_lsp")
        local capabilities = vim.tbl_deep_extend(
            "force",
            {},
            vim.lsp.protocol.make_client_capabilities(),
            cmp_lsp.default_capabilities()
        )

        -- Define an on_attach function to map keys and enable formatting
        local on_attach = function(client, bufnr)
            if client.server_capabilities.documentFormattingProvider then
                vim.api.nvim_buf_set_option(bufnr, "formatexpr", "v:lua.vim.lsp.formatexpr()")
            end
        end

        -- Setup fidget.nvim
        require("fidget").setup({})

        -- Setup mason.nvim
        require("mason").setup()

        -- Setup mason-lspconfig
        require("mason-lspconfig").setup({
            ensure_installed = {
                "angularls",
                "azure_pipelines_ls",
                "bashls",
                "buf",
                "cbfmt",
                "clangd",
                "cmake",
                "csharp_ls",
                "cssls",
                "css_variables",
                "cssmodules_ls",
                "custom_elements_ls",
                "delve",
                "docker_compose_language_service",
                "dockerls",
                "emmet_language_server",
                "emmet_ls",
                "goimports",
                "gopls",
                "gotests",
                "html-lsp",
                "htmx-lsp",
                "intelephense",
                "java_language_server",
                "jq-lsp",
                "jqls",
                "json-lsp",
                "lua_ls",
                "nginx_language_server",
                "pico8_ls",
                "puppet",
                "pyright",
                "pylsp",
                "somesass_ls",
                "sqlls",
                "sqls",
                "svelte",
                "tailwindcss",
                "templ",
                "ts_ls",
                "yamlls",
                "zls"

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
                                diagnostics = {
                                    globals = { "vim", "it", "describe", "before_each", "after_each" },
                                },
                            },
                        },
                    })
                end,
                ["emmet_ls"] = function()
                    require("lspconfig").emmet_ls.setup({
                        on_attach = on_attach,
                        capabilities = capabilities,
                        filetypes = { "html", "css", "typescriptreact", "javascriptreact" },
                    })
                end,
                ["intelephense"] = function()
                    require("lspconfig").intelephense.setup {
                        settings = {
                            intelephense = {
                                environment = {
                                    includePaths = { "./vendor/php-stubs/**/*.php" }
                                },
                            }
                        }
                    }
                end,
            },
        })

        -- Setup nvim-cmp
        local cmp_select = { behavior = cmp.SelectBehavior.Select }

        cmp.setup({
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                ["<C-Space>"] = cmp.mapping.complete(),
            }),
            sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                    { name = 'nvim_lsp_signature_help' },
                    { name = 'nvim_lua' },
                },
                { { name = 'buffer' } }),
        })
        cmp.setup.cmdline('/', {
            sources = cmp.config.sources({
                { name = 'nvim_lsp_document_symbol' }
            }, {
                { name = 'buffer' }
            })
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
