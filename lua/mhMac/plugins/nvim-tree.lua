return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        require("nvim-tree").setup({
            disable_netrw = true,
            hijack_netrw = true,
            open_on_setup = true,
            ignore_ft_on_setup = {},
            auto_close = true,
            open_on_tab = false,
            hijack_cursor = false,
            update_to_buf_dir = {
                enable = true,
                auto_open = true,
            },
        })
    end
}
