return {
        "luissimas/eval.nvim",
        config = function()
            require("eval").setup({
                prefix_char = "> ", -- char displayed before the output content
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
