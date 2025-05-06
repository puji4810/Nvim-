-- 文件名：cpp_runner.lua
local M = {}

--- 编译并运行当前 C++ 文件
function M.compile_and_run()
  -- 保存当前文件
  vim.cmd "silent write"

  -- 获取当前文件名（处理含空格的路径）
  local source_file = vim.fn.shellescape(vim.fn.expand "%") -- 源文件路径
  local executable = vim.fn.shellescape(vim.fn.expand "%:r") -- 可执行文件路径

  -- 编译命令
  local compile_cmd = string.format("clang++ -std=c++23 -Wall -o %s %s", executable, source_file)

  -- 异步编译
  vim.fn.jobstart(compile_cmd, {
    on_exit = function(_, exit_code)
      if exit_code == 0 then
        -- 编译成功，运行可执行文件
        vim.fn.jobstart("./" .. executable, {
          stdout_buffered = true,
          on_stdout = function(_, data)
            if data then
              -- 将标准输出写入新缓冲区
              M.create_output_buffer(data, "Output")
            end
          end,
          on_stderr = function(_, err)
            if err then
              -- 将错误输出写入新缓冲区
              -- M.create_output_buffer(err, "Error")
            end
          end,
        })
      else
        -- 编译失败，显示错误信息
        print("Compilation failed! Exit code: " .. exit_code)
      end
    end,
  })
end

--- 创建输出缓冲区
function M.create_output_buffer(content, title)
  -- 创建新缓冲区
  local buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, content)

  -- 打开新窗口
  local win = vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = 80,
    height = 20,
    row = 5,
    col = 5,
    style = "minimal",
    border = "rounded",
    title = title,
    title_pos = "center",
  })

  -- 设置缓冲区为只读
  vim.api.nvim_buf_set_option(buf, "modifiable", false)
  vim.api.nvim_buf_set_option(buf, "readonly", true)

  -- 关闭窗口快捷键
  vim.api.nvim_buf_set_keymap(buf, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
end

--- 键位映射
vim.api.nvim_set_keymap("n", "<F6>", ":lua require('cpp_runner').compile_and_run()<CR>", {
  noremap = true,
  silent = true,
})

return M
