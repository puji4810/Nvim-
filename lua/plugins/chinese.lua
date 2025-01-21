return {
    {
        "ZSaberLv0/ZFVimIM",
        lazy = false, -- 确保插件即时加载
        config = function()
            -- 配置选项
            vim.g.ZFVimIM_toggle = "<C-Space>" -- 自定义输入法切换快捷键
            vim.g.ZFVimIM_enable = 1 -- 启用 ZFVimIM
        end,
    },
}

