return {
  "plasticboy/vim-markdown",
  ft = { "markdown" }, -- 仅针对 Markdown 文件
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    vim.g.vim_markdown_folding_disabled = 1 -- 禁用折叠
  end,
}

