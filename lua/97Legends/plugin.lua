vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "dartls" })
lvim.plugins = {
  -- { "github/copilot.vim" },
  { "tpope/vim-fugitive" },
  { "mbbill/undotree" },

  { "phenax/cmp-graphql" },
  {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
      -- for debugging
      'mfussenegger/nvim-dap',
    },
    config = true
  },
  { "nvim-treesitter/nvim-treesitter-angular" }
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



-- Tests
-- lvim.builtin.which_key.mappings["T"] = {
--   name = "+Tests",
--   t = { "<cmd>lua require('neotest').run.run()<CR>", "Run nearest test" },
--   T = { "<cmd>lua require('neotest').run.run({strategy = 'dap'})<CR>", "Debug nearest test" },
--   f = { '<cmd>lua require("neotest").run.run(vim.fn.expand("%"))<cr>', "Run test for entire file" },
--   o = { "<cmd>lua require('neotest').summary.toggle()<cr>", "Output summary panel" },
-- }
