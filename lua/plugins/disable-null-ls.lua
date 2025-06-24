return {
  -- 第一个插件：禁用 null-ls.nvim
  {
    "jose-elias-alvarez/null-ls.nvim",
    enabled = false,
  },

  -- 第二个插件：禁用 nvim-ufo
  {
    "nvim-ufo/nvim-ufo", -- AstroNvim 通常使用这个作为 nvim-ufo 的标识符
    enabled = false,
    -- 注意：nvim-ufo 通常有一些依赖项，比如 nvim-treesitter 和某个 provider。
    -- 如果 nvim-ufo 是由 AstroNvim 默认提供的，AstroNvim 的核心配置会处理这些依赖。
    -- 当你在这里通过 `enabled = false` 覆盖它时，通常不需要重复声明依赖，
    -- 因为 lazy.nvim 会将你的这个配置与 AstroNvim 的原始配置进行合并。
    -- 但如果这是在一个完全独立的插件列表文件中，并且你希望 nvim-ufo 在其他地方能被正确加载（如果不是禁用状态），
    -- 你可能需要像这样列出它的依赖：
    -- dependencies = {
    --   "nvim-treesitter/nvim-treesitter",
    --   "promise-async", -- 或者其他 nvim-ufo 可能需要的 provider
    -- },
  },

  -- 如果你还有其他插件需要配置或禁用，可以继续在这里添加
  -- {
  --   "插件作者/插件仓库名",
  --   -- 其他配置...
  -- },
}
