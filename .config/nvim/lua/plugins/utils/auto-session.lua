return {
  'rmagatti/auto-session',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    enabled = true,
    auto_save = false,
    auto_restore = false,
    suppressed_dirs = {
      '/',
      '~/',
      '~/github',
      '~/Downloads',
      '~/Desktop',
      '~/Documents',
      '~/Pictures',
      '~/Music',
      '~/Videos',
    },
  },
  keys = {
    {
      mode = 'n',
      '<leader>as',
      ':AutoSession save<CR>',
      desc = 'Session Save',
    },
    {
      mode = 'n',
      '<leader>al',
      ':AutoSession search<cr>',
      desc = 'Search Sessions',
    },
    {
      mode = 'n',
      '<leader>ad',
      ':AutoSession delete<cr>',
      desc = 'Delete Session',
    },
    {
      mode = 'n',
      '<leader>ar',
      ':AutoSession restore<cr>',
      desc = 'Restore Session',
    },
    {
      mode = 'n',
      '<leader>aa',
      ':AutoSession toggle<cr>',
      desc = 'Toggle Autosave Sessions',
    },
    {
      mode = 'n',
      '<leader>aD',
      ':AutoSession disable<cr>',
      desc = 'Disable Autosave Sessions',
    },
    {
      mode = 'n',
      '<leader>ap',
      ':AutoSession purgeOrphaned<cr>',
      desc = 'Purge Orphaned Sessions',
    },
  },
}
