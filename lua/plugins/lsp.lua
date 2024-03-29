-- require("lvim.lsp.manager").setup("dartls") -- Setup by flutter-tools
require("lvim.lsp.manager").setup("graphql")


local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup {
  {
    name = "prettier",
    ---@usage arguments to pass to the formatter
    -- these cannot contain whitespace
    -- options such as `--line-width 80` become either `{"--line-width", "80"}` or `{"--line-width=80"}`
    args = { "--print-width", "100" },
    ---@usage only start in these filetype, by default it will attach to all filetypes it supports
    -- filetypes = { "typescript", "graphql" },
    filetypes = { "graphql" },
  },
}




-- vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
-- vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)

lvim.lsp.buffer_mappings.normal_mode['gh'] = {
  vim.lsp.buf.hover, "Show hover"
}

-- Keep diagnostic message in insert mode
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    -- delay update diagnostics
    update_in_insert = true,
  }
)
