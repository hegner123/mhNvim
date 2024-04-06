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

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>tt', builtin.find_files, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>pws', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>pWs', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
        require("telescope").load_extension "file_browser"
    end

}

