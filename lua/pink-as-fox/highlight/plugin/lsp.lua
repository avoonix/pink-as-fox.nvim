local v = require('pink-as-fox.colors').vscode

return {
    DiagnosticError = { fg = v.vscRed, bg = 'NONE' },
    DiagnosticWarn = { fg = v.vscYellow, bg = 'NONE' },
    DiagnosticInfo = { fg = v.vscBlue, bg = 'NONE' },
    DiagnosticHint = { fg = v.vscBlue, bg = 'NONE' },
    DiagnosticUnderlineError = { fg = 'NONE', bg = 'NONE', undercurl = true, sp = v.vscRed },
    DiagnosticUnderlineWarn = { fg = 'NONE', bg = 'NONE', undercurl = true, sp = v.vscYellow },
    DiagnosticUnderlineInfo = { fg = 'NONE', bg = 'NONE', undercurl = true, sp = v.vscBlue },
    DiagnosticUnderlineHint = { fg = 'NONE', bg = 'NONE', undercurl = true, sp = v.vscBlue },
    LspReferenceText = { fg = 'NONE', bg = v.vscPopupHighlightGray},
    LspReferenceRead = { fg = 'NONE', bg = v.vscPopupHighlightGray},
    LspReferenceWrite = { fg = 'NONE', bg = v.vscPopupHighlightGray},
}
