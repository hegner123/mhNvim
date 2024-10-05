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
