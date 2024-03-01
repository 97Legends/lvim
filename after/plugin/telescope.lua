function getVisualSelection()
  vim.cmd('noau normal! "vy"')
  local text = vim.fn.getreg('v')
  vim.fn.setreg('v', {})

  text = string.gsub(text, "\n", "")
  if #text > 0 then
    return text
  else
    return ""
  end
end

local builtin = require("telescope.builtin")

lvim.builtin.which_key.mappings["sv"] = {
  function() builtin.grep_string() end, "Search for word under cursor"
}

lvim.builtin.which_key.vmappings["s"] = {
  name = "Search",
  ["v"] = {
    function()
      builtin.grep_string({ search = getVisualSelection() })
    end, "Search for visual selection"
  }
}
