return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {
    open_mapping = [[<c-\>]],
    shade_terminals = true,
    direction = 'horizontal',
    auto_scroll = true,
    float_opts = {
      border = 'curved',
    },
    persist_mode = true,
    start_in_insert = true,
    close_on_exit = true,
    shell = vim.o.shell,
  },
  config = function(_, opts)
    require('toggleterm').setup(opts)

    -- Define LazyGit terminal
    local Terminal = require('toggleterm.terminal').Terminal
    local lazygit = Terminal:new { cmd = 'lazygit', hidden = true, direction = 'float' }

    function _lazygit_toggle()
      lazygit:toggle()
    end

    -- Keymap registered AFTER function exists
    vim.keymap.set('n', '<leader>gg', _lazygit_toggle, {
      desc = 'Run LazyGit',
      silent = true,
    })
  end,
}
