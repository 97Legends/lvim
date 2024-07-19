-- set.lua
-- vim.opt.tabstop = 2
-- vim.opt.softtabstop = 2
-- vim.opt.shiftwidth = 2
-- vim.opt.expandtab = true
vim.opt.textwidth = 80
vim.opt.colorcolumn = "+1"

-- toggles.lua
lvim.format_on_save.enabled = true



-- Using exrc is not recommended.
-- That being said, I am loading local .nvim.lua project configuration
-- lvim.autocommands = {
--   {
--     "VimEnter",
--     {
--       nested = true,
--       callback = function()
--         local filepath = vim.fn.fnamemodify(".nvim.lua", ":p")
--         -- local file = vim.secure.read(filepath)
--         -- if not file then return end
--         if vim.fn.filereadable(filepath) then
--           vim.cmd("luafile .nvim.lua")
--         end
--       end,
--     },
--   },
-- }
