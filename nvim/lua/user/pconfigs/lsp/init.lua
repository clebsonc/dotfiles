local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    vim.notify("lspconfig was not found")
    return
end

require("user.pconfigs.lsp.lsp-installer")
-- require("user.pconfigs.lsp.handlers").setup()
