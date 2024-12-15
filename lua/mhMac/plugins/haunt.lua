return {
    "adigitoleo/haunt.nvim",
    config = function()
        require("haunt").setup {
            window = {
                width_frac = 0.9,
                height_frac = 0.9,
                winblend = 0,
                title_pos = "center",
            },
        }
    end
}






























