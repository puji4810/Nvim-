return {
  {
    "windwp/nvim-ts-autotag",
    opts = {
      opts = {
        enable_rename = false,
        enable_close = true,
        enable_close_on_slash = false,
      },
      per_filetype = {
        cpp = { enable_close = false, enable_rename = false, enable_close_on_slash = false },
        c = { enable_close = false, enable_rename = false, enable_close_on_slash = false },
        markdown = { enable_close = false, enable_rename = false, enable_close_on_slash = false },
        rust = { enable_close = false, enable_rename = false, enable_close_on_slash = false },
      },
    },
  },
}
