-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

require("97Legends.init")
require("plugins.init")



-- workspace settings
local cwd = vim.fn.getcwd(-1, -1)

-- print(cwd)
if cwd == "C:\\Overview\\OVC\\client" then
  -- print("portal-ex")
  require("workspaces.portal-ex")
elseif cwd == "C:\\Overview\\OVC\\mobile_app" then
  -- print("mobile")
  require("workspaces.mobile")
else
  -- print("other")
  require("workspaces.other")
end
