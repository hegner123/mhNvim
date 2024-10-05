function ColorMyPencils(color)
    color = color or "kanagawa-dragon"
    vim.cmd.colorscheme(color)
    vim.o.background = 'dark'
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end
return {

    --"Mofiqul/vscode.nvim",
    "rebelot/kanagawa.nvim",
    config = function()
        require('kanagawa').setup({})
    end,
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "kanagawa-dragon",
        },

    },
}
