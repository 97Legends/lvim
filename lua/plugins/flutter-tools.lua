require("flutter-tools").setup {
  lsp = {
    on_attach = require("lvim.lsp").common_on_attach,
    -- capabilities = require("lvim.lsp").default_capabilities,

    color = {
      enabled = true,
      background = true,
      virtual_text = false,
    },
    -- TODO: does this overwrite other settings?
    settings = {
      -- TODO: does this overwrite other analysisExcludedFolders?
      analysisExcludedFolders = {
        vim.fn.expand("$HOME/AppData/Local/Pub/Cache"),
      }
    },
  },

  decorations = {
    statusline = {
      app_version = true,
      device = true,
      -- project_config = true,
    },
  },

  dev_log = {
    enabled = false,
  },

  -- exception_breakpoints = "default",
  -- exception_breakpoints = { "uncaught" },

  debugger = {
    enabled = true,
    run_via_dap = true,
    exception_breakpoints = {},
    register_configurations = function(_)
      local dap = require("dap")
      dap.set_log_level("TRACE")

      local flutterBin = vim.fn.resolve(vim.fn.exepath('flutter.bat'))
      local flutterSdk = vim.fn.fnamemodify(flutterBin, ":h:h")
      local dartSdk = flutterSdk .. '\\bin\\cache\\dart-sdk' -- \\bin ?

      dap.adapters.dart = {
        type = "executable",
        command = vim.fn.exepath('cmd.exe'),
        args = { '/c', flutterBin, 'debug_adapter' },
        options = {
          detached = false,
        }
      }

      dap.configurations.dart = {
        {
          type = "dart",
          request = "launch",
          name = "Launch flutter",
          dartSdkPath = dartSdk,
          flutterSdkPath = flutterSdk,
          program = "${workspaceFolder}/lib/main.dart",
          cwd = "${workspaceFolder}",
          toolArgs = { '-d', 'windows' },
          sendLogsToClient = true,
        }
      }
    end
  }
}



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
  w = { "<cmd>FlutterRun -d Chrome --web-renderer html<cr>", "Run in Chrome using --web-renderer html" },
}
