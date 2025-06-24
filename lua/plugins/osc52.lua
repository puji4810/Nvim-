return {
  "ojroques/nvim-osc52",
  config = function()
    local osc52 = require("osc52")

    -- 配置选项（可选）
    osc52.setup {
      max_length = 0x7fff, -- 最大复制长度（默认为系统限制）
      silent     = true,   -- 不显示提示信息
    }

    -- 自动将 yank 的内容复制到本地剪贴板
    vim.api.nvim_create_autocmd("TextYankPost", {
      pattern = "*",
      callback = function()
        local register = vim.v.register
        -- 如果是 "+ 或 "* 寄存器则跳过（已使用系统剪贴板）
        if register == "+" or register == "*" then
          return
        end

        -- 获取当前寄存器的内容
        local text = vim.fn.getreg(register, 1, true)
        if not text or #text == 0 then
          return
        end

        -- 异步复制到本地剪贴板
        vim.schedule(function()
          osc52.copy(table.concat(text, "\n"))
        end)
      end,
    })
  end,
}
