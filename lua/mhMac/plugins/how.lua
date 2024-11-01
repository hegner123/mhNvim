return {
    "hegner123/how",
    branch = "main",
    config = function()
        require("how").setup{
            sqlitePath = "/Users/home/.luarocks/lib/lua/5.1/lsqlite3complete.so"
        }

    end
}
