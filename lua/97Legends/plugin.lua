lvim.plugins = {
  { "github/copilot.vim" },
  { "tpope/vim-fugitive" }
}

-- Github Copilot
-- lvim.builtin.cmp.mapping["<Tab>"] = function(fallback)
--   local cmp = require("cmp")
--   if cmp.visible() then
--     cmp.select_next_item()
--   else
--     local copilot_keys = vim.fn["copilot#Accept"]()
--     if copilot_keys ~= "" then
--       vim.api.nvim_feedkeys(copilot_keys, "i", true)
--     else
--       fallback()
--     end
--   end
-- end
