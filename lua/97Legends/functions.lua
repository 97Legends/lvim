function SetTabSize(size)
  if type(size) == "number" then
    vim.opt.tabstop = size
    vim.opt.softtabstop = size
    vim.opt.shiftwidth = size
    vim.opt.expandtab = true
  end
end
