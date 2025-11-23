return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "v0.1.9",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local telescope = require("telescope")

      telescope.setup({})

      local builtin = require("telescope.builtin")

      vim.keymap.set("n", "<leader>ff", builtin.find_files)
      vim.keymap.set("n", "<leader>fd", builtin.oldfiles)
      vim.keymap.set("n", "<leader>fg", builtin.live_grep)
      vim.keymap.set("n", "<leader>fb", builtin.buffers)
      vim.keymap.set("n", "<leader>fh", builtin.help_tags)
      vim.keymap.set("n", "<leader>fc", builtin.git_files)
      vim.keymap.set("n", "<leader>gs", builtin.git_status)
      vim.keymap.set("n", "<leader>gc", builtin.git_commits)
      vim.keymap.set("n", "<leader>gb", builtin.git_branches)
      vim.keymap.set("n", "<leader>gd", builtin.git_bcommits)
    end,
  }
}
