-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local path = vim.fn.stdpath("config") .. "/local.lua"
if vim.uv.fs_stat(path) then dofile(path) end
