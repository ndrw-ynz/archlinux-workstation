local M = {}

-- Compiles and executes a file to ToggleTerm
function M.RunFile()
  local ft = vim.bo.filetype
  local file = vim.fn.expand '%:p'
  local output = vim.fn.expand '%:r'
  local Terminal = require('toggleterm.terminal').Terminal
  local cmd = ''

  if ft == 'cpp' then
    cmd = string.format('g++ %s -o %s && %s', file, output, output)
  else
    print('No runner configured for ' .. ft)
    return
  end

  local term = Terminal:new {
    cmd = cmd,
    direction = 'float',
    close_on_exit = false,
  }
  term:toggle()
end
return M
