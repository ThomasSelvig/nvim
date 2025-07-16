-- null-ls configuration for formatting and linting
local null_ls = require("null-ls")

-- Setup Mason null-ls
require("mason-null-ls").setup({
  ensure_installed = {
    -- Python
    "black",          -- Python formatter
    "isort",          -- Python import sorting
    "ruff",           -- Python linter/formatter (replaces flake8)
    
    -- TypeScript/JavaScript
    "prettier",       -- TS/JS formatter
    
    -- Other useful formatters
    "stylua",         -- Lua formatter
    "shfmt",          -- Shell formatter
  },
  automatic_installation = true,
})

-- Setup null-ls
null_ls.setup({
  sources = {
    -- Python
    null_ls.builtins.formatting.black.with({
      extra_args = { "--fast" },
    }),
    null_ls.builtins.formatting.isort.with({
      extra_args = { "--profile", "black" },
    }),
    null_ls.builtins.diagnostics.ruff,
    
    -- TypeScript/JavaScript
    null_ls.builtins.formatting.prettier.with({
      extra_args = { "--single-quote", "--trailing-comma", "es5" },
    }),
    
    -- Other formatters
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.shfmt.with({
      extra_args = { "-i", "2" },
    }),
  },
  
  -- Format on save
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end
  end,
})

-- Create autogroup for formatting
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- Add keybinding for manual formatting
vim.keymap.set('n', '<leader>lf', function()
  vim.lsp.buf.format({ async = true })
end, { desc = "Format buffer" })

-- Add keybinding for organizing imports (Python)
vim.keymap.set('n', '<leader>li', function()
  vim.lsp.buf.code_action({
    context = { only = { "source.organizeImports" } },
    apply = true,
  })
end, { desc = "Organize imports" })