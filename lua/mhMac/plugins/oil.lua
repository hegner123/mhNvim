return {
    'stevearc/oil.nvim',
    opts = {
        default_file_explorer = true,
        -- Id is automatically added at the beginning, and name at the end
        -- See :help oil-columns
        columns = {
            "icon",
            -- "permissions",
            "size",
            -- "mtime",
        },
    },
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
}
