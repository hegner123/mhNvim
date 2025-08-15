return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline", -- Command-line completions
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-nvim-lsp-signature-help",
        "hrsh7th/cmp-nvim-lsp-document-symbol",
        "saadparwaiz1/cmp_luasnip",
        "L3MON4D3/LuaSnip",
        "rafamadriz/friendly-snippets",
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")

        -- Load friendly snippets
        require("luasnip.loaders.from_vscode").lazy_load()

        -- Add error handling for LSP operations
        local original_make_position_params = vim.lsp.util.make_position_params
        vim.lsp.util.make_position_params = function(window, offset_encoding)
            if window and not vim.api.nvim_win_is_valid(window) then
                window = vim.api.nvim_get_current_win()
            end
            return original_make_position_params(window, offset_encoding)
        end

        local cmp_select = { behavior = cmp.SelectBehavior.Select }

        cmp.setup({
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            completion = {
                completeopt = "menu,menuone,noinsert",
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
                ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
                ["<C-y>"] = cmp.mapping.confirm({ select = true }),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.abort(),
            }),
            sources = cmp.config.sources({
                { 
                    name = "nvim_lsp",
                    entry_filter = function(entry, ctx)
                        -- Validate window and buffer exist
                        local win = vim.api.nvim_get_current_win()
                        local buf = vim.api.nvim_get_current_buf()
                        return vim.api.nvim_win_is_valid(win) and vim.api.nvim_buf_is_valid(buf)
                    end
                },
                { name = "luasnip" },
                { name = "nvim_lsp_signature_help" },
                { name = "buffer" },
                { name = "path" },
                { name = "nvim_lua" },
            }),
        })

        -- Command-line setup for `/` and `?`
        cmp.setup.cmdline({ "/", "?" }, {
            mapping = cmp.mapping.preset.cmdline(),
            sources = {
                { name = "buffer" },
            },
        })

        -- Command-line setup for `:`
        cmp.setup.cmdline(":", {
            mapping = cmp.mapping.preset.cmdline(),
            sources = cmp.config.sources({
                { name = "path" },
            }, {
                { name = "cmdline" },
            }),
        })
    end,
}
