return {
  'ggandor/leap.nvim',
  dependencies = { 'tpope/vim-repeat' },
  config = function()
    -- -help leap-custom-mappings to find more
    vim.keymap.set({ 'n' }, 's', '<Plug>(leap-forward)')
    vim.keymap.set({ 'n' }, '\\', '<Plug>(leap-backward)')
  end,
}
