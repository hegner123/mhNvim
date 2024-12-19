local builtin = require('telescope.builtin')

vim.keymap.set("n", "<leader>pv", vim.cmd.Oil)
vim.keymap.set("n", "<C-O>", vim.cmd.Oil, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format)
vim.keymap.set('n', '<leader>tt', builtin.find_files)
vim.keymap.set('n', '<leader>vh', builtin.help_tags)
vim.keymap.set("n", "<leader>uu", vim.cmd.UndotreeToggle)
vim.api.nvim_set_keymap('n', '<leader>ld', ':Telescope lsp_definitions<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>lr', ':Telescope lsp_references<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>lt', ':Telescope lsp_type_definitions<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>lg', ':Telescope live_grep<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-r>', ':redo<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ie', 'oif err!=nil {<CR>return<CR>}<Esc>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<leader>iep', 'oif err!=nil {<CR>fmt.Printf("%s\\n",err)<CR>}<Esc>',
--   { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>iep',
    [[oif err != nil { <CR>logError("failed to : ", err)<CR>}<Esc>]],
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>iet',
    [[oif err != nil { <CR>logError("failed to : ", err)<CR>_, file, line, _ := runtime.Caller(0)<CR>fmt.Printf("Current line number: %s:%d\n", file, line)<CR>t.FailNow()<CR>}<Esc>]],
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>aa', 'A;<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true })

vim.keymap.set("i", "{", "{}", { noremap = true, silent = true })
vim.keymap.set("i", "{{", "{", { noremap = true, silent = true })
vim.keymap.set("i", "{}", "{}<Esc>i", { noremap = true, silent = true })
vim.keymap.set("i", "(", "()", { noremap = true, silent = true })
vim.keymap.set("i", "((", "(", { noremap = true, silent = true })
vim.keymap.set("i", "()", "()<Esc>i", { noremap = true, silent = true })
vim.keymap.set("i", "<", "<>", { noremap = true, silent = true })
vim.keymap.set("i", "<<", "<", { noremap = true, silent = true })
vim.keymap.set("i", "<>", "<><Esc>i", { noremap = true, silent = true })
vim.keymap.set("i", "[", "[]", { noremap = true, silent = true })
vim.keymap.set("i", "[[", "[", { noremap = true, silent = true })
vim.keymap.set("i", "[]", "[]<Esc>i", { noremap = true, silent = true })
vim.keymap.set("i", "''", "''<Esc>i", { noremap = true, silent = true })
vim.keymap.set("i", "\"\"", "\"\"<Esc>i", { noremap = true, silent = true })
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true, silent = true })
vim.keymap.set('i', ';;', '<Right>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>ss', ':%s@TEXT@ TEXT@g| %s@INTEGER@ INTEGER@g', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")

