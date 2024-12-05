return {
    "ahmedkhalf/project.nvim",
    config = function()
        ProjectNvim = require("project_nvim")
        require('telescope').load_extension('projects')
        ProjectNvim.setup {
            -- Config documentation
            -- https://github.com/ahmedkhalf/project.nvim
            -- All the patterns used to detect root dir, when **"pattern"** is in
            -- detection_methods
            patterns = { ".git", "go.mod", "Makefile", "package.json", "dockerfile" },
        }
    end
}
