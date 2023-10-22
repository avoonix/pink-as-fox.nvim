local v = require('pink-as-fox.colors').vscode
local c = require('pink-as-fox.colors').components

return {
    -- Treesitter
    ['@error'] = { fg = v.vscRed, bg = 'NONE' },
    ['@punctuation.bracket'] = { fg = v.vscFront, bg = 'NONE' },
    ['@punctuation.special'] = { fg = v.vscFront, bg = 'NONE' },
    ['@comment'] = { fg = c.comment, bg = 'NONE', italic = true },
    ['@constant'] = { fg = v.vscAccentBlue, bg = 'NONE' },
    ['@constant.builtin'] = { fg = v.vscBlue, bg = 'NONE' },
    ['@constant.macro'] = { fg = v.vscBlueGreen, bg = 'NONE' },
    ['@string.regex'] = { fg = v.vscOrange, bg = 'NONE' },
    ['@string'] = { fg = v.vscOrange, bg = 'NONE' },
    ['@character'] = { fg = v.vscOrange, bg = 'NONE' },
    ['@number'] = { fg = v.vscLightGreen, bg = 'NONE' },
    ['@boolean'] = { fg = v.vscBlue, bg = 'NONE' },
    ['@float'] = { fg = v.vscLightGreen, bg = 'NONE' },
    ['@annotation'] = { fg = v.vscYellow, bg = 'NONE' },
    ['@attribute'] = { fg = v.vscYellow, bg = 'NONE' },
    ['@attribute.builtin'] = { fg = v.vscBlueGreen, bg = 'NONE' },
    ['@namespace'] = { fg = v.vscBlueGreen, bg = 'NONE' },
    ['@function.builtin'] = { fg = v.vscYellow, bg = 'NONE' },
    ['@function'] = { fg = v.vscYellow, bg = 'NONE' },
    ['@function.macro'] = { fg = v.vscYellow, bg = 'NONE' },
    ['@parameter'] = { fg = v.vscLightBlue, bg = 'NONE' },
    ['@parameter.reference'] = { fg = v.vscLightBlue, bg = 'NONE' },
    ['@method'] = { fg = v.vscYellow, bg = 'NONE' },
    ['@field'] = { fg = v.vscLightBlue, bg = 'NONE' },
    ['@property'] = { fg = v.vscLightBlue, bg = 'NONE' },
    ['@constructor'] = { fg = v.vscBlueGreen, bg = 'NONE' },
    ['@conditional'] = { fg = v.vscPink, bg = 'NONE' },
    ['@repeat'] = { fg = v.vscPink, bg = 'NONE' },
    ['@label'] = { fg = v.vscLightBlue, bg = 'NONE' },
    ['@keyword'] = { fg = v.vscPink, bg = 'NONE' },
    ['@keyword.function'] = { fg = v.vscBlue, bg = 'NONE' },
    ['@keyword.operator'] = { fg = v.vscBlue, bg = 'NONE' },
    ['@operator'] = { fg = v.vscFront, bg = 'NONE' },
    ['@exception'] = { fg = v.vscPink, bg = 'NONE' },
    ['@type'] = { fg = v.vscBlueGreen, bg = 'NONE' },
    ['@type.builtin'] = { fg = v.vscBlue, bg = 'NONE' },
    ['@type.qualifier'] = { fg = v.vscBlue, bg = 'NONE' },
    ['@storageClass'] = { fg = v.vscBlue, bg = 'NONE' },
    ['@structure'] = { fg = v.vscLightBlue, bg = 'NONE' },
    ['@include'] = { fg = v.vscPink, bg = 'NONE' },
    ['@variable'] = { fg = v.vscLightBlue, bg = 'NONE' },
    ['@variable.builtin'] = { fg = v.vscLightBlue, bg = 'NONE' },
    ['@text'] = { fg = v.vscFront, bg = 'NONE' },
    ['@text.underline'] = { fg = v.vscYellowOrange, bg = 'NONE' },
    ['@tag'] = { fg = v.vscBlue, bg = 'NONE' },
    ['@tag.delimiter'] = { fg = v.vscGray, bg = 'NONE' },
    ['@tag.attribute'] = { fg = v.vscLightBlue, bg = 'NONE' },

    ['@text.title'] = { fg = v.vscBlue, bold = true },
    ['@text.literal'] = { fg = v.vscFront, bg = 'NONE' },
    ['@text.literal.markdown'] = { fg = v.vscOrange, bg = 'NONE' },
    ['@text.literal.markdown_inline'] = { fg = v.vscOrange, bg = 'NONE' },
    ['@text.emphasis'] = { fg = v.vscFront, bg = 'NONE', italic = true },
    ['@text.strike'] = { fg = v.vscFront, bg = 'NONE', strikethrough = true },
    ['@text.strong'] = { fg = v.vscBlue, bold = true },
    ['@text.uri'] = { fg = v.vscFront, bg = 'NONE' },
    ['@textReference'] = { fg = v.vscOrange },
    ['@punctuation.delimiter'] = { fg = v.vscFront, bg = 'NONE' },
    ['@stringEscape'] = { fg = v.vscOrange, bold = true },

    ['@text.note'] = { fg = v.vscBlueGreen, bg = 'NONE', bold = true },
    ['@text.warning'] = { fg = v.vscYellowOrange, bg = 'NONE', bold = true },
    ['@text.danger'] = { fg = v.vscRed, bg = 'NONE', bold = true },

    ['@text.diff.add'] = { link = 'DiffAdd' },
    ['@text.diff.delete'] = { link = 'DiffDelete' },

    -- LSP semantic tokens
    ['@lsp.typemod.type.defaultLibrary'] = { link = '@type.builtin' },
    ['@lsp.type.type'] = { link = '@type' },
    ['@lsp.type.typeParameter'] = { link = '@type' },
    ['@lsp.type.macro'] = { link = '@constant' },
    ['@lsp.type.enumMember'] = { link = '@constant' },
    ['@event'] = { link = 'Identifier' },
    ['@interface'] = { link = 'Identifier' },
    ['@modifier'] = { link = 'Identifier' },
    ['@regexp'] = { fg = v.vscRed, bg = 'NONE' },
    ['@decorator'] = { link = 'Identifier' },
}

