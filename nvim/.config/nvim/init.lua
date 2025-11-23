require("main")
require("remap")

-- Load Lazy
local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

vim.opt.rtp:prepend(lazy_path)

require("lazy").setup("plugins")
