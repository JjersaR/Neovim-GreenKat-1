--local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

--para c, c++ y de más
-- require'lspconfig'.clangd.setup{
  -- capabilities = capabilities,
--}

-- para python
-- require'lspconfig'.pyright.setup{
  -- capabilities = capabilities,
--}

--css
require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}

-- emmet html y css
require'lspconfig'.emmet_ls.setup{
  capabilities = capabilities,
}

--tsserver
require'lspconfig'.tsserver.setup{
  capabilities = capabilities,
}

--lua
local system_name
if vim.fn.has("mac") == 1 then
  system_name = "macOS"
elseif vim.fn.has("unix") == 1 then
  system_name = "Linux"
elseif vim.fn.has('win32') == 1 then
  system_name = "Windows"
else
  print("Unsupported system for sumneko")
end

local sumneko_binary_path = vim.fn.exepath("lua-language-server")
if vim.g.is_mac or vim.g.is_linux and sumneko_binary_path ~= "" then
  local sumneko_root_path = vim.fn.fnamemodify(sumneko_binary_path, ":h:h:h")

  local runtime_path = vim.split(package.path, ";")
  table.insert(runtime_path, "lua/?.lua")
  table.insert(runtime_path, "lua/?/init.lua")

  lspconfig.sumneko_lua.setup({
    on_attach = custom_attach,
    cmd = { sumneko_binary_path, "-E", sumneko_root_path .. "/main.lua" },
    settings = {
      Lua = {
        runtime = {
          -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
          version = "LuaJIT",
          -- Setup your lua path
          path = runtime_path,
        },
        diagnostics = {
          -- Get the language server to recognize the `vim` global
          globals = { "vim" },
        },
        workspace = {
          -- Make the server aware of Neovim runtime files
          library = api.nvim_get_runtime_file("", true),
        },
        -- Do not send telemetry data containing a randomized but unique identifier
        telemetry = {
          enable = false,
        },
      },
    },
    capabilities = capabilities,
  })
end

--java
-- require'lspconfig'.jdtls.setup{
  -- capabilities = capabilities,
  -- cmd = { 'jdtls' }
-- }

--angular
-- require'lspconfig'.angularls.setup{
  -- capabilities = capabilities,
-- }

--sql
require'lspconfig'.sqlls.setup{
  capabilities = capabilities
}

--vuels
require'lspconfig'.vuels.setup{
  capabilities = capabilities
}

-- sintaxis de html
require'lspconfig'.html.setup {
  capabilities = capabilities,
}

-- scala
-- require'lspconfig'.metals.setup{
  -- capabilities = capabilities,
-- }

-- bash
require'lspconfig'.bashls.setup{
  capabilities = capabilities,
}

-- rust
-- require'lspconfig'.rls.setup{
  -- capabilities = capabilities,
-- }

--Node.js
require'lspconfig'.dockerls.setup{
  capabilities = capabilities,
}
