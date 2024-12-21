return {

    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,

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
