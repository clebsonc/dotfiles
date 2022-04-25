local status_ok, indent = pcall(require, "indent_blankline")
if not status_ok then
    vim.notify("`indent_blankline` is not installed.")
    return
end



indent.setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
