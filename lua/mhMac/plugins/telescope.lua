return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim",
    },

    config = function()
        local actions = require('telescope.actions')
        local action_state = require('telescope.actions.state')
        local transform_mod = require('telescope.actions.mt').transform_mod

        local custom_actions = transform_mod({
            replace_in_files = function(prompt_bufnr)
                local current_picker = action_state.get_current_picker(prompt_bufnr)
                local multi_selection = current_picker:get_multi_selection()
                local search_text = vim.fn.input("Search for: ")
                local replace_text = vim.fn.input("Replace with: ")

                for _, entry in ipairs(multi_selection) do
                    local cmd = string.format("sed -i 's/%s/%s/g' %s", search_text, replace_text, entry.path)
                    os.execute(cmd)
                end

                actions.close(prompt_bufnr)
            end
        })
        require('telescope').setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-R>"] = custom_actions.replace_in_files
                    },
                    n = {
                        ["<C-R>"] = custom_actions.replace_in_files
                    }
                },
            }
        })
    end

}
