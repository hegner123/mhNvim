-- Function to populate the quickfix list with LSP diagnostics
local function set_diagnostics_to_quickfix()
    -- Get all diagnostics for the current workspace
    local diagnostics = vim.diagnostic.get()

    -- Format diagnostics into quickfix list items
    local quickfix_items = {}
    for _, diagnostic in ipairs(diagnostics) do
        local bufnr = diagnostic.bufnr or 0
        local lnum = diagnostic.lnum + 1 -- Convert to 1-based index
        local col = diagnostic.col + 1 -- Convert to 1-based index
        local text = diagnostic.message or "No message"
        local severity = vim.diagnostic.severity[diagnostic.severity] or "UNKNOWN"

        -- Add the diagnostic to quickfix items
        table.insert(quickfix_items, {
            bufnr = bufnr,
            lnum = lnum,
            col = col,
            text = string.format("[%s] %s", severity, text),
        })
    end

    -- Set the quickfix list
    vim.fn.setqflist(quickfix_items, "r")

    -- Open the quickfix list
    vim.cmd("copen")
end

-- Map a key to trigger this function
vim.keymap.set("n", "<leader>dq", set_diagnostics_to_quickfix, { desc = "Set diagnostics to quickfix" })

