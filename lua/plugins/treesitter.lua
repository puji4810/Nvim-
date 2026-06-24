-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  init = function()
    vim.api.nvim_create_autocmd({ "FileType", "BufEnter", "TextChanged", "TextChangedI" }, {
      pattern = { "markdown", "markdown.mdx" },
      callback = function(args)
        pcall(vim.treesitter.stop, args.buf)
      end,
      desc = "Disable unstable Markdown Treesitter highlighter",
    })
  end,
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "markdown",
      "markdown_inline",
      -- add more arguments for adding more treesitter parsers
    },
    highlight = {
      enable = true,
      disable = { "markdown" },
    },
  },
}
