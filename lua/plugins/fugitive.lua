return {
  'tpope/vim-fugitive', 
  config = function ()
      vim.keymap.set("n", "<leader>ga", ":Git add -A<cr>", {})
      vim.keymap.set("n", "<leader>gc", ":Git commit<cr>", {})
      vim.keymap.set("n", "<leader>gca", ":Git commit --ammend<cr>", {})
  end
}
