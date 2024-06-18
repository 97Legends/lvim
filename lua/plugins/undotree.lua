vim.g.undotree_WindowLayout = 2
vim.g.undotree_SetFocusWhenToggle = 1

lvim.builtin.which_key.mappings["u"] = {
  vim.cmd.UndotreeToggle, "Toggle undotree"
}
