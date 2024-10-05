vim.g.mapleader = " "
local builtin = require('telescope.builtin')


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

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format)


vim.keymap.set('n', '<leader>tt', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>pws', StringGrepL)
vim.keymap.set('n', '<leader>pWs', StringGrepU)
vim.keymap.set('n', '<leader>ps', InputGrep)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
vim.keymap.set("n", "<leader>a", function() Harpoon:list():add() end)
vim.keymap.set("n", "<leader>uu", vim.cmd.UndotreeToggle)
vim.api.nvim_set_keymap('n', '<leader>ld', ':Telescope lsp_definitions<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>lr', ':Telescope lsp_references<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>lt', ':Telescope lsp_type_definitions<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>lg', ':Telescope live_grep<CR>', { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', '<C-r>', ':redo<CR>', { noremap = true, silent = true })
