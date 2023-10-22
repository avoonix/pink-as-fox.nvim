local v = require('pink-as-fox.colors').vscode

return {
    asciidocAttributeEntry = { fg = v.vscYellowOrange },
    asciidocAttributeList = { fg = v.vscPink },
    asciidocAttributeRef = { fg = v.vscYellowOrange },
    asciidocHLabel = { fg = v.vscBlue, bold = true },
    asciidocListingBlock = { fg = v.vscOrange },
    asciidocMacroAttributes = { fg = v.vscYellowOrange },
    asciidocOneLineTitle = { fg = v.vscBlue, bold = true },
    asciidocPassthroughBlock = { fg = v.vscBlue },
    asciidocQuotedMonospaced = { fg = v.vscOrange },
    asciidocTriplePlusPassthrough = { fg = v.vscYellow },
    asciidocMacro = { fg = v.vscPink },
    asciidocAdmonition = { fg = v.vscOrange },
    asciidocQuotedEmphasized = { fg = v.vscBlue, italic = true },
    asciidocQuotedEmphasized2 = { fg = v.vscBlue, italic = true },
    asciidocQuotedEmphasizedItalic = { fg = v.vscBlue, italic = true },
    asciidocBackslash = { link = "Keyword" },
    asciidocQuotedBold = { link = "markdownBold" },
    asciidocQuotedMonospaced2 = { link = "asciidocQuotedMonospaced" },
    asciidocQuotedUnconstrainedBold = { link = "asciidocQuotedBold" },
    asciidocQuotedUnconstrainedEmphasized = { link = "asciidocQuotedEmphasized" },
    asciidocURL = { link = "markdownUrl" },
}

