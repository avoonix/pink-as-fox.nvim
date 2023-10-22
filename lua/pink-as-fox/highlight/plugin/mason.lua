-------------------------------------- MASON.NVIM HIGHLIGHTS ---------------------------------------

local p = require('pink-as-fox.colors').palette
local c = require('pink-as-fox.colors').components

return {
  MasonHeader = { fg = c.bg, bg = p.cyan[3], style = 'bold' },
  MasonHeaderSecondary = { link = 'MasonHeader' },
  MasonHighlight = { fg = p.cyan[3] },
  MasonHighlightSecondary = { link = 'MasonHighlight' },
  MasonHighlightBlock = { link = 'MasonHeader' },
  MasonHighlightBlockSecondary = { link = 'MasonHeader' },
  MasonHighlightBlockBold = { link = 'MasonHeader' },
  MasonHighlightBlockBoldSecondary = { link = 'MasonHeader' },
  MasonMuted = { fg = c.comment },
  MasonMutedBlock = { fg = c.fg },
  MasonMutedBlockBold = { fg = c.fg, style = 'bold' },
}
