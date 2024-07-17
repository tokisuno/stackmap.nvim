local M = {}

-- M.setup = function (opts)
--   print('opts: ', opts)
-- end

-- functions we need
--  - vim.keymap.set(...)           -> create new keymaps
--  - vim.api.nvim_get_keymap(...)  -> gets keymaps

M.push = function (name, mappings)

end

M.pop = function (name)

end

--[[
lua require('mapstack').push('debug_mode', {
  ... mappings in here
})

...

lua require('mapstack').pop('debug_mode')
--]]

return M
