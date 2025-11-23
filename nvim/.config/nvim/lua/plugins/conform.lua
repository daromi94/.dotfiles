return {
  {
    "stevearc/conform.nvim",
    dependencies = { "mason.nvim" },
    config = function()
      local conform = require("conform")

      conform.setup({
        formatters_by_ft = {
          c = { "clang-format" },
          cpp = { "clang-format" },
          h = { "clang-format" },
          hpp = { "clang-format" },
        },
        format_on_save = {
          lsp_format = "fallback",
          timeout_ms = 500,
        },
        formatters = {
          ["clang-format"] = {
            args = {
              "--assume-filename",
              "$FILENAME",
              "--style",
              "{BasedOnStyle: LLVM, BreakBeforeBraces: Stroustrup, IndentWidth: 4}",
            },
          },
        },
      })
    end,
  }
}
