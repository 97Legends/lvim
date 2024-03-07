-- require("lspconfig").dartls.setup({})
require("lvim.lsp.manager").setup("dartls")



-- vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
-- vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)

lvim.lsp.buffer_mappings.normal_mode['gh'] = {
  vim.lsp.buf.hover, "Show hover"
}


-- lvim.plugins = {
--   -- for DAP support
--   { "mfussenegger/nvim-dap" },
--   {
--     "akinsho/flutter-tools.nvim",
--     dependencies = { "nvim-lua/plenary.nvim", "stevearc/dressing.nvim" },
--     config = function()
--       require('flutter-tools').setup {
--         -- (uncomment below line for windows only)
--         -- flutter_path = "home/flutter/bin/flutter.bat",
--         flutter_path = "C:/sdk/flutter/bin/flutter.bat",

--         debugger = {
--           -- make these two params true to enable debug mode
--           enabled = false,
--           run_via_dap = false,
--           register_configurations = function(_)
--             require("dap").adapters.dart = {
--               type = "executable",
--               command = vim.fn.stdpath("data") .. "/mason/bin/dart-debug-adapter",
--               args = { "flutter" }
--             }

--             require("dap").configurations.dart = {
--               {
--                 type = "dart",
--                 request = "launch",
--                 name = "Launch flutter",
--                 dartSdkPath = 'home/flutter/bin/cache/dart-sdk/',
--                 flutterSdkPath = "home/flutter",
--                 program = "${workspaceFolder}/lib/main.dart",
--                 cwd = "${workspaceFolder}",
--               }
--             }
--             -- uncomment below line if you've launch.json file already in your vscode setup
--             -- require("dap.ext.vscode").load_launchjs()
--           end,
--         },
--         dev_log = {
--           -- toggle it when you run without DAP
--           enabled = false,
--           open_cmd = "tabedit",
--         },
--         lsp = {
--           on_attach = require("lvim.lsp").common_on_attach,
--           capabilities = require("lvim.lsp").default_capabilities,
--         },

--       }
--     end
--   },
--   -- for dart syntax highlighting
--   { "dart-lang/dart-vim-plugin" },
-- }
