return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' , 'duane9/nvim-rg' },
    config = function()
      local builtin = require("telescope.builtin")

      vim.keymap.set("n", '<leader>ff', builtin.find_files, { desc = "Telescope find files" })
      vim.keymap.set("n", "<leader>lg", builtin.live_grep, { desc = "Telescope live grep" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  }

}
