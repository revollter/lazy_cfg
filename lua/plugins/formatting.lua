return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = false,
    formatters_by_ft = {
      html = { "prettier" },
      css = { "prettier" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      json = { "prettier" },
      php = { "php_cs_fixer" },
    },
    formatters = {
      prettier = {
        prepend_args = { "--tab-width", "4" },
      },
    },
  },
}
