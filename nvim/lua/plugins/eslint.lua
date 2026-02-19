-- ESLint configuration for flat config (ESLint 10)
return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    -- Ensure servers table exists
    opts.servers = opts.servers or {}
    
    -- Configure ESLint server for flat config
    opts.servers.eslint = opts.servers.eslint or {}
    opts.servers.eslint.settings = opts.servers.eslint.settings or {}
    opts.servers.eslint.settings.experimental = opts.servers.eslint.settings.experimental or {}
    
    -- Enable flat config for ESLint 10
    opts.servers.eslint.settings.experimental.useFlatConfig = true
    
    -- Explicit filetypes
    opts.servers.eslint.filetypes = {
      "javascript",
      "javascriptreact", 
      "javascript.jsx",
      "typescript",
      "typescriptreact",
      "typescript.tsx",
      "vue",
      "svelte",
    }
    
    -- Working directories auto-detection
    opts.servers.eslint.settings.workingDirectories = { mode = "auto" }
    
    return opts
  end,
}