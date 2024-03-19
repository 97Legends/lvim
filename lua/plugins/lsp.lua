require("lvim.lsp.manager").setup("dartls")
require("lvim.lsp.manager").setup("graphql")

-- vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
-- vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)

lvim.lsp.buffer_mappings.normal_mode['gh'] = {
  vim.lsp.buf.hover, "Show hover"
}
