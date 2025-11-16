return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({})

      local builtin = require("telescope.builtin")

      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
      vim.keymap.set("n", "<leader>fd", builtin.oldfiles, { desc = "Find recent files" })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find help" })
      vim.keymap.set("n", "<leader>fc", builtin.git_files, { desc = "Git: Find files" })
      vim.keymap.set("n", "<leader>gs", builtin.git_status, { desc = "Git: Status" })
      vim.keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "Git: Commits" })
      vim.keymap.set("n", "<leader>gb", builtin.git_branches, { desc = "Git: Branches" })
      vim.keymap.set("n", "<leader>gd", builtin.git_bcommits, { desc = "Git: File history" })
    end
  }
}
