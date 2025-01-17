vim.opt.number = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.textwidth = 80
vim.opt.clipboard:append("unnamedplus")
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.showmatch = true
vim.opt.modifiable = true
vim.opt.encoding = "utf-8"
vim.opt.foldmethod = "indent"
vim.opt.foldlevelstart = 99
vim.cmd("colorscheme tokyonight-night")


vim.diagnostic.config({
  virtual_text = false,  -- 行内にエラーメッセージを表示しない
  signs = true,          -- 行番号の横にエラーマークを表示
  update_in_insert = false,
  underline = true,
  severity_sort = true,
  float = {
    focusable = true,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
    wrap = true,  -- エラーメッセージが長い場合に改行
  },
})
-- カーソルホールドで浮動ウィンドウを表示
vim.cmd [[autocmd CursorMoved * lua vim.diagnostic.open_float(nil, { focusable = false })]]

vim.g.render_markdown_open_on_startup = 1
vim.g.render_markdown_use_in_browser = 0
