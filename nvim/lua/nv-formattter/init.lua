require("formatter").setup(
  {
    logging = false,
    filetype = {
      javascript = {
        -- prettier
        function()
          return {
            exe = "prettier",
            args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote"},
            stdin = true
          }
        end
      },
      rust = {
        -- Rustfmt
        function()
          return {
            exe = "rustfmt",
            args = {"--emit=stdout"},
            stdin = true
          }
        end
      },
      lua = {
        -- luafmt
        function()
          return {
            exe = "luafmt",
            args = {"--indent-count", 2, "--stdin"},
            stdin = true
          }
        end
      },
      cpp = {
        -- clang-format
        function()
          return {
            exe = "clang-format",
            args = {},
            stdin = true,
            cwd = vim.fn.expand("%:p:h") -- Run clang-format in cwd of the file.
          }
        end
      },
      c = {
        -- clang-format
        function()
          return {
            exe = "clang-format",
            args = {},
            stdin = true,
            cwd = vim.fn.expand("%:p:h") -- Run clang-format in cwd of the file.
          }
        end
      },
      go = {
        -- gofmt
        function()
          return {
            exe = "gofmt",
            args = {},
            stdin = true
          }
        end
      },
      python = {
        -- black
        function()
          return {
            exe = "black",
            args = {"-"},
            stdin = true
          }
        end
      }
    }
  }
)

vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.go,*.lua FormatWrite
augroup END
]],
  true
)
