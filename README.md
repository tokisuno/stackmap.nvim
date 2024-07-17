# stackmap.nvim
learning neovim plugin development

## notes
* Files in `lua/` are to be run when they are called
* Files in `plugin/` are to be run on startup/runtime
* `require()` loads a file once and then puts it inside of an internal table
    - If you run `:lua require('plugin.xyz') again, nvim checks to see if it's already in the table
    - If the check is satisfied, nothing new happens 
* `require()` loads a file once and saves the result of that thing
