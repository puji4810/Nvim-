return {
  {
    "stevearc/aerial.nvim",
    opts = function(_, opts)
      opts.backends = vim.tbl_deep_extend("force", opts.backends or {}, {
        markdown = { "markdown" },
      })
    end,
  },
}
