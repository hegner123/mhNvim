local alda = require("mhMac.plugins.alda")
local cellular = require("mhMac.plugins.cellular_automation")
local cloak = require("mhMac.plugins.cloak")
local cheatsheet = require("mhMac.plugins.cheatsheet")
local colors = require("mhMac.plugins.colors")
local dashboard = require("mhMac.plugins.dashboard")
local editorconfig = require("mhMac.plugins.editor_config")
local emmet = require("mhMac.plugins.emmet")
local eval = require("mhMac.plugins.eval")
local fugitive = require("mhMac.plugins.fugitive")
local fugit = require("mhMac.plugins.fugit")
local gitConflict = require("mhMac.plugins.git-conflict")
Harpoon = require("mhMac.plugins.harpoon")
local hurl = require("mhMac.plugins.hurl")
local how = require("mhMac.plugins.how")
local imagePreview = require("mhMac.plugins.image_preview")
local lsp = require("mhMac.plugins.lsp")
local localPlugins = require("mhMac.plugins.local")
local luaLine = require("mhMac.plugins.lualine")
local neogen = require("mhMac.plugins.neogen")
local neotest = require("mhMac.plugins.neotest")
local notify = require("mhMac.plugins.notify")
local nvimClip = require("mhMac.plugins.nvim-clip")
local nvimIcons = require("mhMac.plugins.icons")
local oil = require("mhMac.plugins.oil")
local oilPlay = require("mhMac.plugins.oil-play-extension")
local plenary = require("mhMac.plugins.plenary")
local pqf = require("mhMac.plugins.pretty-quick-fix")
local snippets = require("mhMac.plugins.snippets")
local telescope = require("mhMac.plugins.telescope")
local telescopeFileBrowser = require("mhMac.plugins.telescope-file-browser")
local todo = require("mhMac.plugins.todo")
local treesitter = require("mhMac.plugins.treesitter")
local trouble = require("mhMac.plugins.trouble")
local undotree = require("mhMac.plugins.undotree")
local vgit = require("mhMac.plugins.vgit")
local whichkey = require("mhMac.plugins.which")
local zen = require("mhMac.plugins.zenmode")
return {
    alda,
    cellular,
    cloak,
    cheatsheet,
    colors,
    dashboard,
    editorconfig,
    emmet,
    eval,
    fugit,
    fugitive,
    gitConflict,
    Harpoon,
    hurl,
    imagePreview,
    localPlugins,
    lsp,
    luaLine,
    neogen,
    neotest,
    notify,
    nvimClip,
    nvimIcons,
    oil,
    plenary,
    pqf,
    snippets,
    telescope,
    telescopeFileBrowser,
    treesitter,
    trouble,
    todo,
    undotree,
    vgit,
    whichkey,
    zen,
    custom_keys = {
        -- You can define custom key maps here. If present, the description will
        -- be shown in the help menu.
        -- To disable one of the defaults, set it to false.

        ["<localleader>L"] = {
            function(plugin)
                require("lazy.util").float_term({ "lazygit", "log" }, {
                    cwd = plugin.dir,
                })
            end,
            desc = "Open lazygit log",
        },

        ["<localleader>T"] = {
            function(plugin)
                require("lazy.util").float_term(nil, {
                    cwd = plugin.dir,
                })
            end,
            desc = "Open terminal in plugin dir",
        },
    },
}
