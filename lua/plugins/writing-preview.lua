return {
  {
    "lervag/vimtex",
    ft = { "tex", "plaintex", "bib" },
    init = function()
      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_compiler_latexmk = {
        continuous = 1,
        options = {
          "-pdf",
          "-interaction=nonstopmode",
          "-synctex=1",
        },
      }
      vim.g.vimtex_quickfix_mode = 0
      vim.g.vimtex_view_method = "general"
    end,
  },
  {
    "kaarmu/typst.vim",
    ft = "typst",
    lazy = false,
  },
  {
    "chomosuke/typst-preview.nvim",
    ft = "typst",
    version = "1.*",
    opts = {
      invert_colors = "never",
    },
    config = function(_, opts)
      require("typst-preview").setup(opts)
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "typst",
        callback = function()
          vim.keymap.set("n", "<LocalLeader>p", "<Cmd>TypstPreviewToggle<CR>", {
            buffer = true,
            desc = "Toggle Typst preview",
          })
        end,
      })
    end,
  },
}
