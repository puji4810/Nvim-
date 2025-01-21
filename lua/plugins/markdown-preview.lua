return {
  "iamcco/markdown-preview.nvim",
  build = "cd app && npm install", -- 自动安装依赖
  ft = { "markdown" }, -- 针对 Markdown 文件
  config = function()
    vim.g.mkdp_auto_start = 1 -- 自动启动预览
  end,
}

