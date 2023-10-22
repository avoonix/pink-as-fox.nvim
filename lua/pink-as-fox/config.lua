local M = {}

---@type boolean whether highlights have been loaded or not
M.loaded = false

---@type table<HLGroup, HLAttributes>[] list of set of highlight groups
M.highlights = {}

function M.load_highlights()
  M.highlights = require 'pink-as-fox.highlight'
  M.loaded = true
end

return M
