local keymap_lang = vim.g.astronvim_keymap_lang or "zh"

local descriptions = {
  en = {
    ["<Leader>/"] = "Toggle comment line",
    ["<Leader>b"] = "󰓩 Buffers",
    ["<Leader>c"] = "Close buffer",
    ["<Leader>C"] = "Force close buffer",
    ["<Leader>d"] = "󰃤 Debugger",
    ["<Leader>e"] = "Toggle Explorer",
    ["<Leader>f"] = "󰍉 Find",
    ["<Leader>g"] = "󰊢 Git",
    ["<Leader>h"] = "Home Screen",
    ["<Leader>I"] = "Toggle Chinese input",
    ["<Leader>l"] = " Language Tools",
    ["<Leader>n"] = "New File",
    ["<Leader>o"] = "Toggle Explorer Focus",
    ["<Leader>p"] = "󰏖 Packages",
    ["<Leader>q"] = "Quit Window",
    ["<Leader>Q"] = "Exit AstroNvim",
    ["<Leader>R"] = "Rename file",
    ["<Leader>S"] = "󱂬 Session",
    ["<Leader>t"] = " Terminal",
    ["<Leader>u"] = " UI/UX",
    ["<Leader>w"] = "Save",
    ["<Leader>x"] = "󰹱 Quickfix/Lists",
    ["<Leader>H"] = "Chinese keymap help",
    ["<Leader>K"] = "Switch keymap menu language",
    ["<Leader>bC"] = "Close all buffers",
    ["<Leader>bc"] = "Close all buffers except current",
    ["<Leader>bl"] = "Close all buffers to the left",
    ["<Leader>bp"] = "Previous buffer",
    ["<Leader>br"] = "Close all buffers to the right",
    ["<Leader>bs"] = "󰒺 Sort Buffers",
    ["<Leader>bse"] = "By extension",
    ["<Leader>bsi"] = "By buffer number",
    ["<Leader>bsm"] = "By modification",
    ["<Leader>bsp"] = "By full path",
    ["<Leader>bsr"] = "By relative path",
    ["<Leader>f'"] = "Find marks",
    ["<Leader>f/"] = "Find words in current buffer",
    ["<Leader>f<CR>"] = "Resume previous search",
    ["<Leader>fa"] = "Find AstroNvim config files",
    ["<Leader>fb"] = "Find buffers",
    ["<Leader>fc"] = "Find word under cursor",
    ["<Leader>fC"] = "Find commands",
    ["<Leader>ff"] = "Find files",
    ["<Leader>fF"] = "Find all files",
    ["<Leader>fg"] = "Find git files",
    ["<Leader>fh"] = "Find help",
    ["<Leader>fk"] = "Find keymaps",
    ["<Leader>fm"] = "Find man",
    ["<Leader>fn"] = "Find notifications",
    ["<Leader>fo"] = "Find history",
    ["<Leader>fr"] = "Find registers",
    ["<Leader>ft"] = "Find themes",
    ["<Leader>fT"] = "Find TODOs",
    ["<Leader>fw"] = "Find words",
    ["<Leader>fW"] = "Find words in all files",
    ["<Leader>gb"] = "Git branches",
    ["<Leader>gc"] = "Git commits (repository)",
    ["<Leader>gC"] = "Git commits (current file)",
    ["<Leader>gg"] = "Lazygit",
    ["<Leader>gt"] = "Git status",
    ["<Leader>ld"] = "Hover diagnostics",
    ["<Leader>pa"] = "Update Lazy and Mason",
    ["<Leader>pi"] = "Plugins Install",
    ["<Leader>ps"] = "Plugins Status",
    ["<Leader>pS"] = "Plugins Sync",
    ["<Leader>pu"] = "Plugins Check Updates",
    ["<Leader>pU"] = "Plugins Update",
    ["<Leader>Sl"] = "Load last session",
    ["<Leader>uA"] = "Toggle rooter autochdir",
    ["<Leader>ub"] = "Toggle background",
    ["<Leader>ud"] = "Toggle diagnostics",
    ["<Leader>ug"] = "Toggle signcolumn",
    ["<Leader>ui"] = "Change indent setting",
    ["<Leader>ul"] = "Toggle statusline",
    ["<Leader>un"] = "Change line numbering",
    ["<Leader>uN"] = "Toggle Notifications",
    ["<Leader>up"] = "Toggle paste mode",
    ["<Leader>us"] = "Toggle spellcheck",
    ["<Leader>uS"] = "Toggle conceal",
    ["<Leader>ut"] = "Toggle tabline",
    ["<Leader>uw"] = "Toggle wrap",
    ["<Leader>xl"] = "Location List",
    ["<Leader>xq"] = "Quickfix List",
  },
  zh = {
    ["<Leader>/"] = "切换行注释",
    ["<Leader>b"] = "󰓩 缓冲区",
    ["<Leader>c"] = "关闭当前缓冲区",
    ["<Leader>C"] = "强制关闭缓冲区",
    ["<Leader>d"] = "󰃤 调试器",
    ["<Leader>e"] = "打开/关闭文件树",
    ["<Leader>f"] = "󰍉 查找",
    ["<Leader>g"] = "󰊢 Git 版本管理",
    ["<Leader>h"] = "主页",
    ["<Leader>I"] = "切换中英文输入",
    ["<Leader>l"] = " 语言工具/LSP",
    ["<Leader>n"] = "新建文件",
    ["<Leader>o"] = "聚焦/返回文件树",
    ["<Leader>p"] = "󰏖 插件管理",
    ["<Leader>q"] = "关闭窗口",
    ["<Leader>Q"] = "退出 AstroNvim",
    ["<Leader>R"] = "重命名文件",
    ["<Leader>S"] = "󱂬 会话",
    ["<Leader>t"] = " 终端",
    ["<Leader>u"] = " 界面/体验",
    ["<Leader>w"] = "保存",
    ["<Leader>x"] = "󰹱 Quickfix/列表",
    ["<Leader>H"] = "中文快捷键说明",
    ["<Leader>K"] = "切换快捷键菜单语言",
    ["<Leader>bC"] = "关闭所有缓冲区",
    ["<Leader>bc"] = "关闭其他缓冲区",
    ["<Leader>bl"] = "关闭左侧缓冲区",
    ["<Leader>bp"] = "上一个缓冲区",
    ["<Leader>br"] = "关闭右侧缓冲区",
    ["<Leader>bs"] = "󰒺 排序缓冲区",
    ["<Leader>bse"] = "按扩展名排序",
    ["<Leader>bsi"] = "按缓冲区编号排序",
    ["<Leader>bsm"] = "按修改状态排序",
    ["<Leader>bsp"] = "按完整路径排序",
    ["<Leader>bsr"] = "按相对路径排序",
    ["<Leader>f'"] = "查找标记",
    ["<Leader>f/"] = "在当前缓冲区搜索",
    ["<Leader>f<CR>"] = "继续上次搜索",
    ["<Leader>fa"] = "查找 AstroNvim 配置",
    ["<Leader>fb"] = "查找缓冲区",
    ["<Leader>fc"] = "查找光标下单词",
    ["<Leader>fC"] = "查找命令",
    ["<Leader>ff"] = "查找文件",
    ["<Leader>fF"] = "查找所有文件",
    ["<Leader>fg"] = "查找 Git 文件",
    ["<Leader>fh"] = "查找帮助文档",
    ["<Leader>fk"] = "查找快捷键",
    ["<Leader>fm"] = "查找 man 手册",
    ["<Leader>fn"] = "查找通知",
    ["<Leader>fo"] = "查找历史文件",
    ["<Leader>fr"] = "查找寄存器",
    ["<Leader>ft"] = "切换主题",
    ["<Leader>fT"] = "查找 TODO",
    ["<Leader>fw"] = "全局搜索文字",
    ["<Leader>fW"] = "在所有文件中搜索文字",
    ["<Leader>gb"] = "Git 分支",
    ["<Leader>gc"] = "Git 提交记录",
    ["<Leader>gC"] = "当前文件提交记录",
    ["<Leader>gg"] = "打开 Lazygit",
    ["<Leader>gt"] = "Git 状态",
    ["<Leader>ld"] = "查看诊断信息",
    ["<Leader>pa"] = "更新 Lazy 和 Mason",
    ["<Leader>pi"] = "安装插件",
    ["<Leader>ps"] = "插件状态",
    ["<Leader>pS"] = "同步插件",
    ["<Leader>pu"] = "检查插件更新",
    ["<Leader>pU"] = "更新插件",
    ["<Leader>Sl"] = "加载上次会话",
    ["<Leader>uA"] = "切换自动切根目录",
    ["<Leader>ub"] = "切换背景明暗",
    ["<Leader>ud"] = "切换诊断显示",
    ["<Leader>ug"] = "切换标志列",
    ["<Leader>ui"] = "修改缩进设置",
    ["<Leader>ul"] = "切换状态栏",
    ["<Leader>un"] = "修改行号显示",
    ["<Leader>uN"] = "切换通知",
    ["<Leader>up"] = "切换粘贴模式",
    ["<Leader>us"] = "切换拼写检查",
    ["<Leader>uS"] = "切换 conceal 隐藏显示",
    ["<Leader>ut"] = "切换标签栏",
    ["<Leader>uw"] = "切换自动换行",
    ["<Leader>xl"] = "位置列表",
    ["<Leader>xq"] = "Quickfix 列表",
  },
}

local help_lines = {
  "AstroNvim 常用快捷键",
  "",
  "菜单语言",
  "  <Space> K      切换 Space 菜单中英文",
  "  <Space> H      打开这份中文说明",
  "",
  "基础",
  "  <Space>        打开快捷键提示菜单",
  "  <Esc>          回到普通模式",
  "  :q             关闭当前窗口",
  "  :w             保存文件",
  "",
  "文件 / 搜索",
  "  <Space> f f    查找文件",
  "  <Space> f w    全局搜索文字",
  "  <Space> e      打开/关闭文件树",
  "",
  "窗口 / 缓冲区",
  "  <Space> b      缓冲区菜单",
  "  <Space> c      关闭当前缓冲区",
  "  <Space> q      关闭当前窗口",
  "  ] b            下一个缓冲区",
  "  [ b            上一个缓冲区",
  "  <C-h/j/k/l>    在窗口之间移动",
  "",
  "代码",
  "  g d            跳到定义",
  "  g r            查看引用",
  "  K              查看悬浮文档",
  "  <Space> l      LSP/语言工具菜单",
  "",
  "写作预览",
  "  :VimtexCompile 编译/实时预览 LaTeX",
  "  , p            Typst 文件中切换预览",
  "  :TypstPreview  开始 Typst 预览",
  "",
  "中文输入 / Copilot",
  "  <C-Space>      切换中英文输入",
  "  <Space> I      切换中英文输入",
  "  <C-l>          接受 Copilot 建议",
  "  <C-j>          接受 Copilot 建议（兼容旧习惯）",
  "  <C-]>          关闭 Copilot 建议",
  "",
  "再按 q 或 <Esc> 关闭此窗口",
}

local function current_descriptions()
  return descriptions[keymap_lang] or descriptions.en
end

local function notify_language()
  local label = keymap_lang == "zh" and "中文" or "English"
  vim.notify("快捷键菜单已切换为 " .. label, vim.log.levels.INFO, { title = "AstroNvim" })
end

local function apply_keymap_language()
  local astrocore = require "astrocore"
  local maps = { n = {} }

  for lhs, desc in pairs(current_descriptions()) do
    local existing = vim.fn.maparg(lhs, "n", false, true)
    if existing and existing.lhs then
      if existing.callback then
        maps.n[lhs] = { existing.callback, desc = desc, silent = existing.silent == 1, expr = existing.expr == 1 }
      elseif existing.rhs and existing.rhs ~= "" then
        maps.n[lhs] = {
          existing.rhs,
          desc = desc,
          silent = existing.silent == 1,
          expr = existing.expr == 1,
          remap = existing.noremap == 0,
        }
      else
        maps.n[lhs] = { desc = desc }
      end
    else
      maps.n[lhs] = { desc = desc }
    end
  end

  astrocore.set_mappings(maps)

  if package.loaded["which-key"] then
    pcall(function()
      require("which-key").add(vim.tbl_map(function(item)
        item.mode = "n"
        return item
      end, vim.tbl_map(function(lhs)
        local item = { lhs, desc = current_descriptions()[lhs] }
        if lhs:match "^<Leader>.$" then item.group = item.desc end
        return item
      end, vim.tbl_keys(current_descriptions()))))
    end)
  end
end

local function toggle_keymap_language()
  keymap_lang = keymap_lang == "zh" and "en" or "zh"
  vim.g.astronvim_keymap_lang = keymap_lang
  apply_keymap_language()
  notify_language()
end

local function open_chinese_mappings()
  local buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, help_lines)
  vim.bo[buf].modifiable = false
  vim.bo[buf].filetype = "help"

  local width = math.min(66, vim.o.columns - 4)
  local height = math.min(#help_lines, vim.o.lines - 6)
  local win = vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = width,
    height = height,
    row = math.floor((vim.o.lines - height) / 2),
    col = math.floor((vim.o.columns - width) / 2),
    style = "minimal",
    border = "rounded",
    title = " 中文快捷键 ",
    title_pos = "center",
  })

  local close = function()
    if vim.api.nvim_win_is_valid(win) then vim.api.nvim_win_close(win, true) end
  end
  vim.keymap.set("n", "q", close, { buffer = buf, silent = true })
  vim.keymap.set("n", "<Esc>", close, { buffer = buf, silent = true })
end

return {
  {
    "AstroNvim/astrocore",
    init = function()
      vim.api.nvim_create_autocmd("User", {
        pattern = "VeryLazy",
        once = true,
        callback = apply_keymap_language,
      })
    end,
    opts = function(_, opts)
      local maps = opts.mappings
      local desc = current_descriptions()

      maps.n["<Leader>H"] = { open_chinese_mappings, desc = desc["<Leader>H"] }
      maps.n["<Leader>K"] = { toggle_keymap_language, desc = desc["<Leader>K"] }

      for lhs, text in pairs(desc) do
        if maps.n[lhs] then maps.n[lhs].desc = text end
      end
    end,
  },
}
