local M = {
  "mhartington/formatter.nvim",

  event = "BufReadPost",
}

function M.config()
  local util = require "formatter.util"
  require("formatter").setup {
    logging = true,
    log_level = vim.log.levels.WARN,
    filetype = {
      lua = {
        require("formatter.filetypes.lua").stylua,
      },
      python = {
        require("formatter.filetypes.python").black,
      },
      ["*"] = {
        require("formatter.filetypes.any").remove_trailing_whitespace,
      },
    },
  }
end

return M
