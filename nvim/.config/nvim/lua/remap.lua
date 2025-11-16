-- Open file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Disable arrow keys in normal mode
local no_op = "<Nop>"

vim.keymap.set('n', '<left>', no_op)
vim.keymap.set('n', '<right>', no_op)
vim.keymap.set('n', '<up>', no_op)
vim.keymap.set('n', '<down>', no_op)
