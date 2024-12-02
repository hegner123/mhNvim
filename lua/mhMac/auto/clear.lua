vim.api.nvim_create_augroup("custom", { clear = true })
vim.api.nvim_create_autocmd({"BufEnter","CmdlineLeave"}, {
    group = "custom",
    callback = function()
        vim.fn.timer_start(1000, function()
            vim.cmd [[ echon ' ' ]]
        end)
    end
})
