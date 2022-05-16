local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
    vim.notify("null-ls is not installed. Check `https://github.com/jose-elias-alvarez/null-ls.nvim`")
    return
end


local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics


null_ls.setup {
  debug = false,
  sources = {
    formatting.prettier.with { extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } },  -- https://prettier.io/docs/en/index.html
    formatting.black,  -- .with { extra_args = { "--fast" } },  -- https://github.com/psf/black
    formatting.stylua,   -- https://github.com/JohnnyMorganz/StyLua
    formatting.isort,
    -- formatting.yapf,  -- https://github.com/google/yapf
    diagnostics.flake8,  -- https://github.com/PyCQA/flake8
    -- diagnostics.pylint   -- https://github.com/PyCQA/pylint
  },
}
