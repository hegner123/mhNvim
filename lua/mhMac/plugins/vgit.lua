return {
    'tanvirtin/vgit.nvim',
    requires = {
        'nvim-lua/plenary.nvim'
    },
    config = function()
        require("vgit").setup({
            keymaps={},
            settings = {
                live_blame = {
                    enabled = false
                }, -- Disable live_blame
            },
        })
    end
}
