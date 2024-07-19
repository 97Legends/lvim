local components = require "lvim.core.lualine.components"



local function app_version_show()
  return vim.g.flutter_tools_decorations["app_version"]:gsub('\r', '')
end

local function getCurrentDevice()
  -- return vim.g.flutter_tools_decorations["device"].name

  -- flutter_tools_decorations not picking up device for some reason.
  -- Fetch device manually.
  local device = require("flutter-tools.commands").current_device()
  if device == nil then return "" end
  if device.name ~= nil then return device.name end
  if device.id ~= nil then return device.id end
  return ""
end

lvim.builtin.lualine.sections.lualine_x = {
  { getCurrentDevice },
  { app_version_show },

  components.diagnostics,
  components.lsp,
  components.spaces,
  components.filetype,
}



local function selectionCount()
  local isVisualMode = vim.fn.mode():find("[Vv]")
  if not isVisualMode then return "" end
  local starts = vim.fn.line("v")
  local ends = vim.fn.line(".")
  local lines = starts <= ends and ends - starts + 1 or starts - ends + 1
  return tostring(lines) .. "L " .. tostring(vim.fn.wordcount().visual_chars) .. "C"
end

lvim.builtin.lualine.sections.lualine_z = {
  -- duplicate of components.progress but added a condition
  {
    "progress",
    fmt = function()
      return "%P/%L"
    end,
    color = {},

    cond = function()
      return not vim.fn.mode():find("[Vv]")
    end,
  },

  { selectionCount },
}



-- LVIM Lualine Defaults

-- local components = require "lvim.core.lualine.components"

-- lvim.builtin.lualine.sections = {
--   lualine_a = {
--     components.mode,
--   },
--   lualine_b = {
--     components.branch,
--   },
--   lualine_c = {
--     components.diff,
--     components.python_env,
--   },
--   lualine_x = {
--     components.diagnostics,
--     components.lsp,
--     components.spaces,
--     components.filetype,
--   },
--   lualine_y = {
--     components.location
--   },
--   lualine_z = {
--     components.progress,
--   },
-- }

-- lvim.builtin.lualine.inactive_sections = {
--   lualine_a = {
--     components.mode,
--   },
--   lualine_b = {
--     components.branch,
--   },
--   lualine_c = {
--     components.diff,
--     components.python_env,
--   },
--   lualine_x = {
--     components.diagnostics,
--     components.lsp,
--     components.spaces,
--     components.filetype,
--   },
--   lualine_y = { components.location },
--   lualine_z = {
--     components.progress,
--   },
-- }
