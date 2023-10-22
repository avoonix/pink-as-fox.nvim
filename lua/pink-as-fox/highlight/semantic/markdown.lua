local v = require('pink-as-fox.colors').vscode

return {
    markdownBold = { fg = v.vscBlue, bold = true },
    markdownCode = { fg = v.vscOrange, bg = 'NONE' },
    markdownRule = { fg = v.vscBlue, bold = true },
    markdownCodeDelimiter = { fg = v.vscFront, bg = 'NONE' },
    markdownHeadingDelimiter = { fg = v.vscBlue, bg = 'NONE' },
    markdownFootnote = { fg = v.vscOrange, bg = 'NONE' },
    markdownFootnoteDefinition = { fg = v.vscOrange },
    markdownUrl = { fg = v.vscFront, bg = 'NONE', underline = true },
    markdownLinkText = { fg = v.vscOrange},
    markdownEscape = { fg = v.vscOrange},
}

