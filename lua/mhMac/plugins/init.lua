local alda = require("mhMac.plugins.alda")
local cellular = require("mhMac.plugins.cellular_automation")
local cloak = require("mhMac.plugins.cloak")
local cmp = require("mhMac.plugins.cmpmh")
local cheatsheet = require("mhMac.plugins.cheatsheet")
local colors = require("mhMac.plugins.colors")
local dashboard = require("mhMac.plugins.dashboard")
local dap = require("mhMac.plugins.dap")
local dotnet = require("mhMac.plugins.dotnet")
local editorconfig = require("mhMac.plugins.editor_config")
local emmet = require("mhMac.plugins.emmet")
local eval = require("mhMac.plugins.eval")
local fugit = require("mhMac.plugins.fugit")
local gitConflict = require("mhMac.plugins.git-conflict")
Harpoon = require("mhMac.plugins.harpoon")
local haunt = require("mhMac.plugins.haunt")
local hurl = require("mhMac.plugins.hurl")
local how = require("mhMac.plugins.how")
local imagePreview = require("mhMac.plugins.image_preview")
local lsp = require("mhMac.plugins.lsp")
local localPlugins = require("mhMac.plugins.local")
local luaLine = require("mhMac.plugins.lualine")
local multiCursor = require("mhMac.plugins.multi-cursor")
local neogen = require("mhMac.plugins.neogen")
local neotest = require("mhMac.plugins.neotest")
local nvimClip = require("mhMac.plugins.nvim-clip")
local nvimIcons = require("mhMac.plugins.icons")
local oil = require("mhMac.plugins.oil")
local oilPlay = require("mhMac.plugins.oil-play-extension")
local overseer = require("mhMac.plugins.overseer")
local plenary = require("mhMac.plugins.plenary")
local pqf = require("mhMac.plugins.pretty-quick-fix")
local project = require("mhMac.plugins.project")
local snacks = require("mhMac.plugins.snacks")
local snippets = require("mhMac.plugins.snippets")
local surround = require("mhMac.plugins.surround")
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
    cheatsheet,
    cloak,
    cmp,
    colors,
    dap,
    dashboard,
    dotnet,
    editorconfig,
    emmet,
    eval,
    fugit,
    gitConflict,
    Harpoon,
    haunt,
    hurl,
    lsp,
    luaLine,
    neogen,
    neotest,
    nvimClip,
    nvimIcons,
    oil,
    overseer,
    plenary,
    pqf,
    project,
    snacks,
    snippets,
    surround,
    telescope,
    telescopeFileBrowser,
    treesitter,
    trouble,
    todo,
    undotree,
    vgit,
    whichkey,
    zen,
    --"adigitoleo/haunt.nvim",
}
