---@alias keymap function set a new keymap
return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",

    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")

        -- REQUIRED
        harpoon:setup()
        -- REQUIRED
        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end,{ desc="harpoon add to list"})
        vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end,{desc="select 1 of harpoon"})
        vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end,{desc="select 2 of harpoon"})
        vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end,{desc="select 3 of harpoon"})
        vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end,{desc="select 4 of harpoon"})

        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set("n", "<leader>left", function() harpoon:list():prev() end, {desc="select previous"})
        vim.keymap.set("n", "<leader>right", function() harpoon:list():next() end, {desc="select next"})
    end
}
