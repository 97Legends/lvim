-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

require("97Legends.init")
require("plugins.init")


-- Turn off mouse
-- set mouse=
vim.opt.mouse = ""


-- lvim.transparent_window = true



function string.startsWith(String, Start)
  return string.sub(String, 1, string.len(Start)) == Start
end

-- workspace settings
local cwd = vim.fn.getcwd(-1, -1)

if cwd:startsWith("C:\\Overview\\OVC\\client") then
  print("client")
  require("workspaces.portal-ex")
elseif cwd:startsWith("C:\\Overview\\OVC\\mobile_app") then
  print("mobile_app")
  require("workspaces.mobile")
elseif cwd:startsWith("C:\\Overview\\OVC\\ng-client") then
  print("ng-client")
  require("workspaces.ng-client")
else
  print("other")
  require("workspaces.other")
end
