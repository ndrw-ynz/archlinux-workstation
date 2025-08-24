return {
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  opts = {
    delay = 0,
    icons = {
      mappings = vim.g.have_nerd_font,
      keys = vim.g.have_nerd_font and {} or {
        Up = '<Up> ',
        Down = '<Down> ',
        Left = '<Left> ',
        Right = '<Right> ',
        C = '<C-…> ',
        M = '<M-…> ',
        D = '<D-…> ',
        S = '<S-…> ',
        CR = '<CR> ',
        Esc = '<Esc> ',
        ScrollWheelDown = '<ScrollWheelDown> ',
        ScrollWheelUp = '<ScrollWheelUp> ',
        NL = '<NL> ',
        BS = '<BS> ',
        Space = '<Space> ',
        Tab = '<Tab> ',
        F1 = '<F1>',
        F2 = '<F2>',
        F3 = '<F3>',
        F4 = '<F4>',
        F5 = '<F5>',
        F6 = '<F6>',
        F7 = '<F7>',
        F8 = '<F8>',
        F9 = '<F9>',
        F10 = '<F10>',
        F11 = '<F11>',
        F12 = '<F12>',
      },
    },
    { '<leader>g', group = 'Git', icon = '' },
  },
  -- Document existing key chains
  config = function()
    local wk = require 'which-key'
    wk.setup {
      icons = {
        group = '',
      },
      layout = {
        align = 'center',
      },
      win = {
        border = 'bold',
        padding = { 1, 2 },
        wo = {
          winblend = 5,
        },
      },
      wk.add {
        { '<leader>b', group = 'Buffer', icon = '' },
        { '<leader>s', group = 'Search', icon = '' },
        { '<leader>t', group = 'Toggle', icon = '' },
        { '<leader>g', group = 'Git', icon = '' },
        { '<leader>u', group = 'UI', icon = '💻' },
        { '<leader>f', group = 'Files', icon = '󰮗' },
        { '<leader>c', group = 'Change', icon = '✍️' },
      },
    }
  end,
}
