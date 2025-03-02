return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = {
          "lua_ls",        -- Lua language server
          "lua_language_server",        -- Lua language server
          "angularls",      -- Angular language server
          "bashls",         -- Bash language server
          "tailwindcss",    -- Tailwind CSS language server
          "css_variables",  -- CSS Variables language server
          "cssls",          -- CSS language server
          "cssmodules_ls",  -- CSS Modules language server
          "unocss",         -- Unocss language server (tailwind like)
          "dockerls",       -- Docker language server
          "docker_compose_language_service", -- Docker Compose language server
          "html",           -- HTML language server
          "java_language_server", -- Java language server
          "jdtls",          -- Java Development Tools (for Java LSP)
          "eslint",         -- ESLint (JavaScript/TypeScript linter)
          "ts_ls",          -- TypeScript language server
          "jsonls",         -- JSON language server
          "ast_grep",       -- AST Grep (for grep-style searching in code)
          
          -- Additional language servers:
          "scss",           -- SCSS language server
          "jsls",           -- JavaScript language server
          "tsserver",       -- TypeScript Server (commonly used for JS/TS/JSX/TSX)
          "jsx",            -- JSX language server (could be handled by `tsserver`)
          "tsx",            -- TSX language server (also handled by `tsserver`)
          "bashls",         -- Bash language server
          "zshls",          -- Zsh language server
          "yaml",           -- YAML language server
          "conf",           -- Configuration files (e.g., nginx, apache)
          "python-lsp-server", -- Python language server (e.g., pyright)
          "clangd",         -- Clangd for C/C++/Objective-C
          "angularls",      -- Angular language server
        },
      }
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
