local v = require('pink-as-fox.colors').vscode

return {
  ['@constant.python'] = { link = 'PreProc' },
  ['@constructor.python'] = { link = 'Type' },
  ['@exception.python'] = { link = 'Keyword' },
  ['@function.builtin.python'] = { link = 'Function' },
  ['@include.python'] = { link = 'Include' },
  ['@parameter.python'] = { link = 'Parameter' },
  ['@repeat.python'] = { link = 'Keyword' },
  ['@string.documentation.python'] = { link = 'Comment' },
  ['@string.escape.python'] = { link = 'Operator' },
  ['@variable.builtin.python'] = { link = 'Keyword' },

  pythonStatement = { fg = v.vscBlue, bg = 'NONE' },
  pythonOperator = { fg = v.vscBlue, bg = 'NONE' },
  pythonException = { fg = v.vscPink, bg = 'NONE' },
  pythonExClass = { fg = v.vscBlueGreen, bg = 'NONE' },
  pythonBuiltinObj = { fg = v.vscLightBlue, bg = 'NONE' },
  pythonBuiltinType = { fg = v.vscBlueGreen, bg = 'NONE' },
  pythonBoolean = { fg = v.vscBlue, bg = 'NONE' },
  pythonNone = { fg = v.vscBlue, bg = 'NONE' },
  pythonTodo = { fg = v.vscBlue, bg = 'NONE' },
  pythonClassVar = { fg = v.vscBlue, bg = 'NONE' },
  pythonClassDef = { fg = v.vscBlueGreen, bg = 'NONE' },
}
