# Claude Memory for mhNvim Configuration

## Recent Issues and Solutions

### Fidget.nvim Error (July 30, 2025)
**Issue**: Error with fidget.nvim plugin showing `Invalid 'virt_text_pos': 'eol_right_align'`
```
Error executing vim.schedule lua callback: ...e/.local/share/nvim/lazy/fidget.nvim/lua/fidget/p
oll.lua:119: ...nvim/lazy/fidget.nvim/lua/fidget/notification/window.lua:192: ...nvim/lazy/fidg
et.nvim/lua/fidget/notification/window.lua:464: Invalid 'virt_text_pos': 'eol_right_align'
```

**Solution**: Disabled fidget.nvim by commenting out:
- Dependency in `lua/mhMac/plugins/lsp.lua:6`
- Setup configuration in `lua/mhMac/plugins/lsp.lua:23-34`

**What fidget does**: Provides visual feedback for LSP operations (progress notifications, status updates, notification windows)

**Alternative solutions**:
- Update fidget.nvim to latest version: `:Lazy update fidget.nvim`
- Remove from lazy-lock.json and reinstall

## Configuration Structure
- Main LSP config: `lua/mhMac/plugins/lsp.lua`
- Lock file: `lazy-lock.json`
- Git status shows recent changes to LSP config and lock file

## Recent Git Status
```
M lazy-lock.json
M lua/mhMac/plugins/lsp.lua
D pack/plugins/start/how/how.lua
D pack/plugins/start/how/how/actions.lua
D pack/plugins/start/how/how/commands.lua
D pack/plugins/start/how/how/format.lua
D pack/plugins/start/how/how/schema.lua
```