return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim",
        "telescope-file-browser.nvim"
    },

    config = function()
        require('telescope').setup({
            file_browser = {
                -- disables netrw and use telescope-file-browser in its place
                hijack_netrw = true,
            },
        })

        require("telescope").load_extension "file_browser"
    end

}

