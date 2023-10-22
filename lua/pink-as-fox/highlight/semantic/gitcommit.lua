local v = require('pink-as-fox.colors').vscode

return {
    gitcommitHeader = { fg = v.vscGray, bg = 'NONE' },
    gitcommitOnBranch = { fg = v.vscGray, bg = 'NONE' },
    gitcommitBranch = { fg = v.vscPink, bg = 'NONE' },
    gitcommitComment = { fg = v.vscGray, bg = 'NONE' },
    gitcommitSelectedType = { fg = v.vscGreen, bg = 'NONE' },
    gitcommitSelectedFile = { fg = v.vscGreen, bg = 'NONE' },
    gitcommitDiscardedType = { fg = v.vscRed, bg = 'NONE' },
    gitcommitDiscardedFile = { fg = v.vscRed, bg = 'NONE' },
    gitcommitOverflow = { fg = v.vscRed, bg = 'NONE' },
    gitcommitSummary = { fg = v.vscPink, bg = 'NONE' },
    gitcommitBlank = { fg = v.vscPink, bg = 'NONE' },
}

