# stackmap.nvim
learning neovim plugin development

[last left off](https://youtu.be/n4Lp4cV8YR0?si=-lu4cY-w58kV266K&t=4612)

## notes
* Files in `lua/` are to be run when they are called
* Files in `plugin/` are to be run on startup/runtime
* `require()` loads a file once and then puts it inside of an internal table
    - If you run `:lua require('plugin.xyz') again, nvim checks to see if it's already in the table
    - If the check is satisfied, nothing new happens 
* `require()` loads a file once and saves the result of that thing
* lhs = left-hand side


## Functions needed for plugin
* vim.keymap.set(...)           -> create new keymaps
* vim.api.nvim_get_keymap(...)  -> gets keymaps

## pairs() vs ipairs()
### pairs
* iterates over EVERY key in a table
* order not guaranteed
* used for string keys
### ipairs
* iterate over numeric keys
* order IS guaranteed

