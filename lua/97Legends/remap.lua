-- ThePrimeagen
lvim.builtin.which_key.mappings["pv"] = {
  ":Ex<CR>", "NeoVim Explorer"
}

lvim.keys.normal_mode["J"] = "mzJ`z"
lvim.keys.normal_mode["<C-d>"] = "<C-d>zz"
lvim.keys.normal_mode["<C-u>"] = "<C-u>zz"
lvim.keys.normal_mode["n"] = "nzzzv"
lvim.keys.normal_mode["N"] = "Nzzzv"



-- greatest remap ever -ThePrimeagen
-- vim.keymap.set("x", "<leader>p", "\"_dP")

-- next greatest remap ever : asbjornHaland
-- lvim.keys.normal_mode["<leader>y"] = "\"+y"
-- lvim.keys.visual_mode["<leader>y"] = "\"+y"
-- lvim.keys.normal_mode["<leader>Y"] = "\"+Y"
-- lvim.keys.normal_mode["<leader>d"] = "\"_d"
-- lvim.keys.visual_mode["<leader>d"] = "\"_d"



-- lvim.keys.normal_mode["<leader>f"] = function()
--   lvim.lsp.buf.format()
-- end



lvim.builtin.which_key.mappings["ss"] = {
  ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left><Space><BS>", "Replace all instances of word"
}
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })



-- 97Legends
-- lvim.keys.term_mode["<esc>"] = "<C-\\><C-N>"
lvim.keys.term_mode["<C-h>"] = "<C-\\><C-O><C-w>h<esc>"
lvim.keys.term_mode["<C-j>"] = "<C-\\><C-O><C-w>j<esc>"
lvim.keys.term_mode["<C-k>"] = "<C-\\><C-O><C-w>k<esc>"
lvim.keys.term_mode["<C-l>"] = "<C-\\><C-O><C-w>l<esc>"

lvim.keys.normal_mode["<leader>|"] = ":vsplit<CR>"
lvim.keys.normal_mode["<leader>-"] = ":split<CR>"


lvim.builtin.which_key.mappings["a"] = {
  name = "Add",
  ['"'] = {
    'ciw"<C-r>""<esc>', "Surround in double quotes"
  },
  ["'"] = {
    "ciw'<C-r>\"'<esc>", "Surround in single quotes"
  }
}

lvim.builtin.which_key.mappings["r"] = {
  name = "Remove",
  ['"'] = {
    'di"hPl2x', "Remove double quotes"
  },
  ["'"] = {
    "di'hPl2x", "Remove single quotes"
  }
}


lvim.builtin.which_key.vmappings["a"] = {
  name = "Add",
  ['"'] = {
    'c"<C-r>""<esc>', "Surround in double quotes"
  },
  ["'"] = {
    "c'<C-r>\"'<esc>", "Surround in single quotes"
  }
}


lvim.builtin.which_key.mappings["b<"] = {
  "<cmd>BufferLineMovePrev<CR>", "Move buffer to the left"
}
lvim.builtin.which_key.mappings["b>"] = {
  "<cmd>BufferLineMoveNext<CR>", "Move buffer to the right"
}
