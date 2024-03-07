vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

lvim.builtin.which_key.mappings["term"] = {
  ":below split term://bash<Enter>i", "Open Neovim Terminal"
}
