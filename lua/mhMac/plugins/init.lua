local alda = require("mhMac.plugins.alda")
local cellular = require("mhMac.plugins.cellular_automation")
local cloak = require("mhMac.plugins.cloak")
local colors = require("mhMac.plugins.colors")
local copilot = require("mhMac.plugins.copilot")
local copilot_cmp = require("mhMac.plugins.copilot_cmp")
local copilot_chat = require("mhMac.plugins.copilot_chat")
local dashboard = require("mhMac.plugins.dashboard")
local editorconfig = require("mhMac.plugins.editor_config")
local emmet = require("mhMac.plugins.emmet")
local eval = require("mhMac.plugins.eval")
local fugitive = require("mhMac.plugins.fugitive")
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
local nvimIcons = require("mhMac.plugins.icons")
local oil = require("mhMac.plugins.oil")
local pqf = require("mhMac.plugins.pretty-quick-fix")
local snippets = require("mhMac.plugins.snippets")
local telescope = require("mhMac.plugins.telescope")
local telescopeFileBrowser = require("mhMac.plugins.telescope-file-browser")
local todo = require("mhMac.plugins.todo")
local treesitter = require("mhMac.plugins.treesitter")
local trouble = require("mhMac.plugins.trouble")
local undotree = require("mhMac.plugins.undotree")
local whichkey = require("mhMac.plugins.which")
local zen = require("mhMac.plugins.zenmode")
return {
    alda,
    cellular,
    cloak,
    colors,
    copilot,
    copilot_chat,
    copilot_cmp,
    dashboard,
    editorconfig,
    emmet,
    eval,
    fugitive,
    gitConflict,
    Harpoon,
    how,
    hurl,
    imagePreview,
    localPlugins,
    lsp,
    luaLine,
    neogen,
    neotest,
    notify,
    nvimIcons,
    oil,
    pqf,
    snippets,
    telescope,
    telescopeFileBrowser,
    treesitter,
    trouble,
    todo,
    undotree,
    whichkey,
    zen,
}
