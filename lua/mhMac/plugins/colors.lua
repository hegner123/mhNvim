function ColorMyPencils(color)
    color = color or "vscode"
    vim.cmd.colorscheme(color)
    vim.o.background = 'dark'
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    -- add dracula
    {
        "Mofiqul/vscode.nvim",

        name = "vscode",
        config = function()
            local c = require('vscode.colors').get_colors()
            require('vscode').setup({

                -- Alternatively set style in setup
                -- style = 'light'

                -- Enable transparent background
                transparent = true,

                -- Enable italic comment
                italic_comments = true,

                -- Underline `@markup.link.*` variants
                underline_links = true,

                -- Disable nvim-tree background color
                disable_nvimtree_bg = true,

                -- Override colors (see ./lua/vscode/colors.lua)
                color_overrides = {
                    vscLineNumber = '#FFFFFF',
                },

                -- Override highlight groups (see ./lua/vscode/theme.lua)
                group_overrides = {
                    -- this supports the same val table as vim.api.nvim_set_hl
                    -- use colors from this colorscheme by requiring vscode.colors!
                    Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
                },

                ColorMyPencils()


            })
        end
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "vscode",
            transparent = true,
        },
    },
}
