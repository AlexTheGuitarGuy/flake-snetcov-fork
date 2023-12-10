local M = {}

local options = { noremap = true, silent = true }
local apply_keymaps = function(mode, keymaps)
  for key, command in pairs(keymaps) do
    vim.keymap.set(mode, key, command, options)
  end
end

M.n = {
  -- No highlight
  ['<leader>no'] = ':noh<CR>',
  -- Let J stay in place
  ['J'] = 'mzJ`z',
  -- Let cursor stay in center
  ['<C-d>'] = '<C-d>zz',
  ['<C-u>'] = '<C-u>zz',
  -- Also let cursor stay in center when searching
  ['n'] = 'nzzzv',
  ['N'] = 'Nzzzv',
  -- Yank in clipboard
  ['<leader>y'] = '"+y',
  ['<leader>Y'] = '"+Y',
  -- Worst thing in the universe
  ['Q'] = '<nop>',
}
M.v = {
  -- Stay in indent mode
  ['<'] = '<gv',
  ['>'] = '>gv>',
  -- Move text up and down
  ['<C-j>'] = ":m '>+1<CR>gv=gv",
  ['<C-k>'] = ":m '<-2<CR>gv=gv",
  ['p'] = '"_dP',
  -- Yank in clipboard
  ['<Leader>y'] = '"+y',
}
M.x = {
  -- Move text up and down
  ['J'] = ":move '>+1<CR>gv-gv",
  ['K'] = ":move '<-2<CR>gv-gv",
  ['<A-j>'] = ":move '>+1<CR>gv-gv",
  ['<A-k>'] = ":move '<-2<CR>gv-gv",
  -- Yank in clipboard
  ['<Leader>y'] = '"+y',
}

M.init = function()
  vim.keymap.set('', '<Space>', '<Nop>', options)
  vim.g.mapleader = ' '
  vim.g.maplocalleader = ' '
  apply_keymaps('n', M.n)
  apply_keymaps('v', M.v)
  apply_keymaps('x', M.x)
end

return M
