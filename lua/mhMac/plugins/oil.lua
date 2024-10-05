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
        delete_to_trash = true,
        watch_for_changes = true,
    },
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
}
