return {
  'ThePrimeagen/refactoring.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('refactoring').setup {
      print_var_statements = {},
    }

    -- Print var
    vim.keymap.set({ 'x', 'n' }, '<leader>rv', function()
      require('refactoring').debug.print_var()
    end)
    -- Supports both visual and normal mode

    vim.keymap.set('n', '<leader>rc', function()
      require('refactoring').debug.cleanup {}
    end)
    -- Supports only normal mode
  end,
}
