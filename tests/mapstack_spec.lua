local find_map = function(maps, lhs)
  for _, map in ipairs(maps) do
    if map.lhs == lhs then
      return map
    end
  end
end

describe("mapstack", function()
	it("can be required", function()
		require("stackmap")
	end)

  it("can push a single mapping", function()
    local rhs = "echo 'this is a test'"
    require('stackmap').push("test1", "n", {
      asdf = "echo 'this is a test'"
    })
    local maps = vim.api.nvim_get_keymap('n')
    local found = find_map(maps, "asdf")

    -- once the function has done its thing:
    --  assert that the right behaviour occurs
    assert.are.same(rhs, found.rhs)
  end)
end)
