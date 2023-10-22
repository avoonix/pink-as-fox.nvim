local v = require('pink-as-fox.colors').vscode

return {
  ['@constant.builtin.lua'] = { link = 'Constant' },
  ['@constructor.lua'] = { link = 'Delimiter' },
  ['@field.lua'] = { link = 'Parameter' },
  ['@function.builtin.lua'] = { link = 'Function' },
  ['@keyword.operator.lua'] = { link = 'Operator' },
  ['@parameter.lua'] = { link = 'Field' },
  ['@property.lua'] = { link = 'Parameter' },
  ['@repeat.lua'] = { link = 'Keyword' },

  ['@lsp.type.macro.lua'] = { link = 'Type' },
  ['@lsp.type.parameter.lua'] = { link = 'Field' },
  ['@lsp.type.property.lua'] = { link = 'Parameter' },

  luaFuncCall = { fg = v.vscYellow, bg = 'NONE' },
  luaFuncArgName = { fg = v.vscLightBlue, bg = 'NONE' },
  luaFuncKeyword = { fg = v.vscPink, bg = 'NONE' },
  luaLocal = { fg = v.vscPink, bg = 'NONE' },
  luaBuiltIn = { fg = v.vscBlue, bg = 'NONE' },
}
