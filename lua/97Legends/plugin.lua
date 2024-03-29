vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "dartls" })
lvim.plugins = {
  { "github/copilot.vim" },
  { "tpope/vim-fugitive" },

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
    config = true,
    -- config = function()
    --   require("flutter-tools").setup {
    --     lsp = {
    --       on_attach = require("lvim.lsp").common_on_attach,
    --     },
    --     -- settings = {
    --     --   enableSnippets = true,
    --     -- },
    --   }
    -- end,
    -- ft = "dart",
  }



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



-- Flutter
-- Use which-key to add extra bindings with the leader-key prefix
require("telescope").load_extension("flutter")
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["F"] = {
  name = "+Flutter",
  c = { "<cmd>Telescope flutter commands<cr>", "Open Flutter Commands" },
  d = { "<cmd>FlutterDevices<cr>", "Flutter Devices" },
  e = { "<cmd>FlutterEmulators<cr>", "Flutter Emulators" },
  r = { "<cmd>FlutterReload<cr>", "Hot Reload App" },
  R = { "<cmd>FlutterRestart<cr>", "Hot Restart app" },
  q = { "<cmd>FlutterQuit<cr>", "Quit running application" },
  -- v = { "<cmd>Telescope flutter fvm<cr>", "Flutter version" },
}



-- Tests
-- lvim.builtin.which_key.mappings["T"] = {
--   name = "+Tests",
--   t = { "<cmd>lua require('neotest').run.run()<CR>", "Run nearest test" },
--   T = { "<cmd>lua require('neotest').run.run({strategy = 'dap'})<CR>", "Debug nearest test" },
--   f = { '<cmd>lua require("neotest").run.run(vim.fn.expand("%"))<cr>', "Run test for entire file" },
--   o = { "<cmd>lua require('neotest').summary.toggle()<cr>", "Output summary panel" },
-- }
