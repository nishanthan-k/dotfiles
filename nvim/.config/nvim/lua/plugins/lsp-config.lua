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
          "lua_language_server", -- Duplicate entry, can be removed
          "angularls",      -- Angular language server
          "bashls",         -- Bash language server
          "tailwindcss",    -- Tailwind CSS language server
          "css_variables",  -- CSS Variables language server
          "cssls",          -- CSS language server
          "cssmodules_ls",  -- CSS Modules language server
          "unocss",         -- Unocss language server (tailwind-like)
          "dockerls",       -- Docker language server
          "docker_compose_language_service", -- Docker Compose language server
          "html",           -- HTML language server
          "java_language_server", -- Java language server
          "jdtls",          -- Java Development Tools (for Java LSP)
          "eslint",         -- ESLint (JavaScript/TypeScript linter)
          "tsserver",
          "ts_ls",          -- TypeScript language server (use ts_ls instead of tsserver)
          "typescript_language_server", -- Duplicate entry, can be removed
          "jsonls",         -- JSON language server
          "ast_grep",       -- AST Grep (for grep-style searching in code)
          
          -- Additional language servers:
          "yamlls",         -- YAML language server (valid server name)
          "pyright",        -- Python language server (use pyright instead of python-lsp-server)
          "clangd",         -- Clangd for C/C++/Objective-C
          "nginx",          -- NGINX configuration language server (valid server name)
        },
      }
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      
      -- Automatically set up servers from mason-lspconfig
      local on_attach = function(client, bufnr)
        -- Keymaps for LSP
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = bufnr })
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr })
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { buffer = bufnr })
      end

      -- Set up all the servers listed in ensure_installed
      local servers = require("mason-lspconfig").get_installed_servers()

      for _, server in ipairs(servers) do
        lspconfig[server].setup({
          on_attach = on_attach,
        })
      end
    end
  }
}
