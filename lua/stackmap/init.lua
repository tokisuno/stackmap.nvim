local M = {}
local leader = vim.g.mapleader -- <- so then i can search for <Space> which is my leaderkey

local find_mapping = function (maps, lhs)
  for _, value in ipairs(maps) do
    if value.lhs == lhs then
      return value
    end
  end
end

M._stack = {}

M.push = function (name, mode, mappings)
  local maps = vim.api.nvim_get_keymap(mode)

  local existing_maps = {}
  for lhs, rhs in pairs(mappings) do
    local existing = find_mapping(maps, lhs)
    if existing then
      table.insert(existing_maps, existing)
    end
  end

  M._stack[name] = existing_maps

  for lhs, rhs in pairs(mappings) do
    -- TODO: need some way to pass opts here
    vim.keymap.set(mode, lhs, rhs)
  end
end

M.pop = function (name)
end

M.push("debug_mode", "n", {
  [leader.."ph"] = "echo 'hello'",
  [leader.."pz"] = "echo 'goodbye'",
})

--[[

lua require('mapstack').push('debug_mode', 'n' {
})

...

lua require('mapstack').pop('debug_mode')

--]]

return M
