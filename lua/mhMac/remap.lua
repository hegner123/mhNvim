vim.g.mapleader = " "
local builtin = require('telescope.builtin')

function ToggleCopilot()
    local copilotStatus = vim.api.nvim_exec(':Copilot status', true)
    if string.find(copilotStatus, "Online") then
        vim.api.nvim_exec(':Copilot disable', true)
        print("disable Copilot")
    else
        vim.api.nvim_exec(':Copilot enable', true)
        print("enable copilot")
    end
end

function InputGrep()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end

function StringGrepL()
    local word = vim.fn.expand("<cword>")
    builtin.grep_string({ search = word })
end

function StringGrepU()
    local word = vim.fn.expand("<cWORD>")
    builtin.grep_string({ search = word })
end

vim.keymap.set("n", "<leader>pv", vim.cmd.Oil)

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>tcp", ToggleCopilot)

vim.keymap.set('n', '<leader>tt', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>pws', StringGrepL)
vim.keymap.set('n', '<leader>pWs', StringGrepU)
vim.keymap.set('n', '<leader>ps', InputGrep)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
vim.keymap.set("n", "<leader>a", function() Harpoon:list():add() end)
vim.keymap.set("n", "<leader>uu", vim.cmd.UndotreeToggle)

vim.api.nvim_create_user_command(
    'LspAttachPico8',
    function()
        vim.lsp.start({
            name = "pico8-ls",
            cmd = { "pico8-ls" },
            root_dir = vim.fn.getcwd(),
        })
        local lsp_name = "pico8-ls"
        local clients = vim.lsp.get_active_clients()
        local bufnr = vim.api.nvim_get_current_buf()

        for _, client in ipairs(clients) do
            if client.name == lsp_name then
                vim.lsp.buf_attach_client(bufnr, client.id)
                print("Attached " .. lsp_name .. " to current buffer.")
                return
            end
        end

        print("No active client named " .. lsp_name .. " found.")
    end,
    { desc = "Attach the pico8-ls language server to the current buffer" }
)
