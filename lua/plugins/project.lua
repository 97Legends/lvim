-- Project keeps pattern matching to change directory to what it thinks is a project
-- Change it to manual so I can set what a project is
-- lvim.builtin.project.manual_mode = true
-- lvim.builtin.nvimtree.setup.respect_buf_cwd = false

-- Change pattern to only make git repos projects
lvim.builtin.project.patterns = { ".git" }


-- function CheckRespectBufCwd()
--     print(lvim.builtin.nvimtree.setup.respect_buf_cwd)
-- end
