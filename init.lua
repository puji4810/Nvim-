-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- AstroNvim v4 still calls vim.lsp.with(), which is deprecated in newer Neovim.
-- Keep compatibility without showing a startup warning.
vim.lsp.with = function(handler, override_config)
  return function(err, result, ctx, config)
    config = vim.tbl_deep_extend("force", override_config or {}, config or {})
    return handler(err, result, ctx, config)
  end
end

local vim_deprecate = vim.deprecate
vim.deprecate = function(name, alternative, version, plugin, backtrace)
  if name == "client.supports_method" then return end
  return vim_deprecate(name, alternative, version, plugin, backtrace)
end

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end


require "lazy_setup"
require "polish"
require("plugins.astrolsp")
require("plugins.chinese")
-- require("cpp_runner")
-- 设置透明背景
vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "LineNr", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NonText", { bg = "NONE" })

vim.opt.clipboard = "unnamedplus"
