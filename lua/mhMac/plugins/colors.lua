return {

    --"Mofiqul/vscode.nvim",
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("cyberdream").setup{
            -- Enable transparent background
            transparent = true,

            -- Enable italics comments
            italic_comments = false,

            -- Replace all fillchars with ' ' for the ultimate clean look
            hide_fillchars = false,

            -- Modern borderless telescope theme - also applies to fzf-lua
            borderless_telescope = true,

            -- Set terminal colors used in `:terminal`
            terminal_colors = true,

            -- Improve start up time by caching highlights. Generate cache with :CyberdreamBuildCache and clear with :CyberdreamClearCache
            cache = true,

            theme = {
                variant = "light", -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`
                saturation = 1,    -- accepts a value between 0 and 1. 0 will be fully desaturated (greyscale) and 1 will be the full color (default)
            },

            -- Disable or enable colorscheme extensions
            extensions = {
                telescope = true,
                notify = true,
                mini = true,
                lazy = true,
                lualine = true,
            },
        }
    end

}
--function ColorMyPencils(color)
--    color = color or "kanagawa-dragon"
--    vim.cmd.colorscheme(color)
--    vim.o.background = 'dark'
--    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--end
--

-- Override a highlight group entirely using the color palette
-- overrides = function(colors) --  This function nullifies the `highlights` option
-- Example:
--return {
-- Comment = { fg = colors.green, bg = "NONE", italic = true },
--    ["@property"] = { fg = colors.magenta, bold = true },
--}
--end,

-- Override a color entirely
-- colors = {
-- For a list of colors see `lua/cyberdream/colours.lua`
-- Example:
--    bg = "#000000",
--    green = "#00ff00",
--    magenta = "#ff00ff",
-- },
