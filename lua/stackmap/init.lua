local M = {}

-- M.setup = function (opts)
--   print('opts: ', opts)
-- end

-- functions we need
--  - vim.keymap.set(...)           -> create new keymaps
--  - vim.api.nvim_get_keymap(...)  -> gets keymaps

-- lhs -> left-hand side
local find_mapping = function (maps, lhs)
  -- pairs
  --  - iterates over EVERY key in a table
  --  - order not guaranteed
  --  - used for string keys
  -- ipairs
  --  - iterate over numeric keys
  --  - order IS guaranteed

  for _, value in ipairs(maps) do
    if value.lhs == lhs then
      return value
    end
  end
end

M.push = function (name, mode, mappings)
  local maps = vim.api.nvim_get_keymap(mode)

  P(find_mapping(maps, "<leader>ph"))
  -- P(maps)
end

M.pop = function (name)

end

M.push("debug_mode", "n", {
  ["<leader>ph"] = "echo 'hello'",
  ["<leader>pz"] = "echo 'goodbye'",
})

--[[

lua require('mapstack').push('debug_mode', 'n' {
})

...

lua require('mapstack').pop('debug_mode')

--]]

return M
