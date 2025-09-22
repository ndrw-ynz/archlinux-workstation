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
      ':SessionSave<CR>',
      desc = 'Session Save',
    },
    {
      mode = 'n',
      '<leader>al',
      ':Autosession search<cr>',
      desc = 'Search Sessions',
    },
    {
      mode = 'n',
      '<leader>ad',
      ':Autosession delete<cr>',
      desc = 'Delete Session',
    },
    {
      mode = 'n',
      '<leader>ar',
      ':SessionRestore ',
      desc = 'Restore Session',
    },
    {
      mode = 'n',
      '<leader>aa',
      ':SessionToggleAutoSave<CR>',
      desc = 'Toggle Autosave Sessions',
    },
    {
      mode = 'n',
      '<leader>aD',
      ':SessionDisableAutoSave<CR>',
      desc = 'Disable Autosave Sessions',
    },
    {
      mode = 'n',
      '<leader>ap',
      ':SessionPurgeOrphaned<CR>',
      desc = 'Purge Orphaned Sessions',
    },
  },
}
