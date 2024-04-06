vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<Nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)


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

vim.keymap.set("n", "<leader>tcp", ToggleCopilot)
