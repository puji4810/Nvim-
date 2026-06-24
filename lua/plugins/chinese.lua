return {
  {
    "ZSaberLv0/ZFVimIM",
    lazy = false,
    config = function()
      vim.g.ZFVimIM_enable = 1
      vim.g.ZFVimIM_keymap = 0

      vim.keymap.set("n", "<C-Space>", "ZFVimIME_keymap_toggle_n()", {
        expr = true,
        silent = true,
        desc = "切换中英文输入",
      })
      vim.keymap.set("i", "<C-Space>", "ZFVimIME_keymap_toggle_i()", {
        expr = true,
        silent = true,
        desc = "切换中英文输入",
      })
      vim.keymap.set("v", "<C-Space>", "ZFVimIME_keymap_toggle_v()", {
        expr = true,
        silent = true,
        desc = "切换中英文输入",
      })
      vim.keymap.set("n", "<Leader>I", "ZFVimIME_keymap_toggle_n()", {
        expr = true,
        silent = true,
        desc = "切换中英文输入",
      })
    end,
  },
}
