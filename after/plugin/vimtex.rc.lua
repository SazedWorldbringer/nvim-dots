local status, bufferline = pcall(require, 'vimtex')
if (not status) then return end

vim.cmd [[
let g:vimtex_format_enabled = true
]]
