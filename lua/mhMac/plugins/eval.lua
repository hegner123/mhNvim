return {
    {
        "luissimas/eval.nvim",
        config = function()
            require("eval").setup({
                prefix_char = "> ", -- char displayed before the output content
                -- a table with each filetype and its respective command to run code
                filetype = {
                    lua = {
                        cmd = "lua"
                    },
                    javascript = {
                        cmd = "node"
                    },
                    go = {
                        cmd = "air"
                    }
                },
            })
        end
    }
}
