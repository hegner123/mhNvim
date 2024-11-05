return {
    "adigitoleo/haunt.nvim",
    config = function()
        require("haunt").setup {
            window = {
                width_frac = 0.7,
                height_frac = 0.7,
                winblend = 0,
                title_pos = "center",
            },
        }
    end
}






























