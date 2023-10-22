local v = require('pink-as-fox.colors').vscode

return {
  ['@keyword.rust'] = { fg = v.vscBlue, bg = 'NONE' },
  ['@type.builtin.rust'] = { fg = v.vscBlueGreen, bg = 'NONE' },
  ['@constant.rust'] = { fg = v.vscFront, bg = 'NONE' },
  ['@lsp.type.enumMember.rust'] = { fg = v.vscBlueGreen, bg = 'NONE' },
  ['@type.rust'] = { fg = v.vscBlueGreen, bg = 'NONE' },
  ['@constant.builtin.rust'] = { fg = v.vscBlueGreen, bg = 'NONE' },
  ['@string.escape'] = { fg = v.vscYellowOrange, bg = 'NONE' },
  ['@include'] = { fg = v.vscBlue, bg = 'NONE' },
  ['@function.macro.rust'] = { fg = v.vscFront, bg = 'NONE' },
  -- TODO: self should be vscBlue
  -- TODO: fragment_specifier should be vscLightBlue
  -- TODO: unit_expression should be vscLightBlue
  -- TODO: enum_variant should be vscBlueGreen
  -- ['@namespace.rust'] = { fg = v.vscFront, bg = 'NONE' },
}

