------------------------------------------ COLOR PALETTE -------------------------------------------

local palette = {
  black = '#000000',
  blue = {
    [1] = '#b8d3ff',
    [2] = '#a6c8ff',
    [3] = '#78a9ff',
    [4] = '#5c97ff',
  },
  cyan = {
    [1] = '#99daff',
    [2] = '#82cfff',
    [3] = '#1192e8',
    [4] = '#013360',
  },
  gray = {
    [1] = '#e0e0e0',
    [2] = '#cac5c4',
    [3] = '#c1c7cd',
    [4] = '#adb5bd',
    [5] = '#525252',
    [6] = '#474747',
    [7] = '#262626',
    [8] = '#181818',
  },
  green = {
    [1] = '#a7f0ba',
    [2] = '#74e792',
    [3] = '#6fdc8c',
    [4] = '#42be65',
    [5] = '#04230a',
  },
  magenta = {
    [1] = '#ff94c3',
    [2] = '#ff7eb6',
  },
  orange = {
    [1] = '#ff9d57',
    [2] = '#ff832b',
    [3] = '#3e1a00',
  },
  purple = {
    [1] = '#d4bbff',
    [2] = '#be95ff',
    [3] = '#a56eff',
    [4] = '#7c3dd6',
  },
  red = {
    [1] = '#ffb3b8',
    [2] = '#ff8389',
    [3] = '#fa4d56',
    [4] = '#da1e28',
    [5] = '#2d0709',
  },
  teal = {
    [1] = '#57e5e5',
    [2] = '#08bdba',
    [3] = '#009d9a',
  },
  yellow = {
    [1] = '#f8e6a0',
    [2] = '#d2a106',
    [3] = '#483700',
    [4] = '#261d00',
  },
}

local components = {
  -- main
  none = 'NONE',
  bg = '#000000',
  fg = '#ff55c8',
  fg2 = '#ffd4f1',

  -- miscellaneous
  border = '#541c42',
  visual = '#541c42',
  tabsel = '#697077',
  tags = '#e07980',
  title = '#5579f0',

  -- syntax
  comment = '#853d6d',
  constant = '#5080ff',
  field = '#7ac098',
  keyword = '#a665d0',
  literal = '#ca7050',
  method = '#c8b670',
  namespace = '#a3a0d8',
  operator = '#ff7279',
  parameter = '#50b0e0',
  string = '#e0a076',
  type = '#0ab6ba',
  variable = '#9ac6e0',

  -- indicators
  error = palette.red[3],
  warn = palette.orange[1],
  info = palette.blue[2],
  hint = palette.gray[4],
  success = palette.green[3],
  default = palette.cyan[2],
}

-- terminal palette; each color { dark, light } variants
local terminal = {
  black = { palette.gray[8], palette.gray[5] },
  red = { components.error, components.operator },
  green = { palette.green[4], components.field },
  yellow = { components.method, palette.yellow[1] },
  blue = { components.constant, palette.blue[3] },
  purple = { components.keyword, components.namespace },
  cyan = { components.parameter, components.variable },
  white = { components.fg, palette.gray[1] },
}

local vscode = {
  vscNone = 'NONE',
  vscFront = components.fg2,
  vscBack = components.bg,

  vscTabCurrent = '#1E1E1E',
  vscTabOther = '#2D2D2D',
  vscTabOutside = '#252526',

  vscLeftDark = '#252526',
  vscLeftMid = '#373737',
  vscLeftLight = '#636369',

  vscPopupFront = '#BBBBBB',
  vscPopupBack = '#272727',
  vscPopupHighlightBlue = '#004b72',
  vscPopupHighlightGray = '#343B41',

  vscSplitLight = '#898989',
  vscSplitDark = '#444444',
  vscSplitThumb = '#424242',

  vscCursorDarkDark = '#222222',
  vscCursorDark = '#51504F',
  vscCursorLight = '#AEAFAD',
  vscSelection = '#264F78',
  vscLineNumber = '#5A5A5A',

  vscDiffRedDark = '#4B1818',
  vscDiffRedLight = '#6F1313',
  vscDiffRedLightLight = '#FB0101',
  vscDiffGreenDark = '#373D29',
  vscDiffGreenLight = '#4B5632',
  vscSearchCurrent = '#515c6a',
  vscSearch = '#613315',

  vscGitAdded = '#81b88b',
  vscGitModified = '#e2c08d',
  vscGitDeleted = '#c74e39',
  vscGitRenamed = '#73c991',
  vscGitUntracked = '#73c991',
  vscGitIgnored = '#8c8c8c',
  vscGitStageModified = '#e2c08d',
  vscGitStageDeleted = '#c74e39',
  vscGitConflicting = '#e4676b',
  vscGitSubmodule = '#8db9e2',

  vscContext = '#404040',
  vscContextCurrent = '#707070',

  vscFoldBackground = '#202d39',

  -- Syntax colors
  vscGray = '#808080',
  vscViolet = '#646695',
  vscBlue = '#569CD6',
  vscAccentBlue = '#4FC1FE',
  vscDarkBlue = '#223E55',
  vscMediumBlue = '#18a2fe',
  vscLightBlue = '#9CDCFE',
  vscGreen = '#6A9955',
  vscBlueGreen = '#4EC9B0',
  vscLightGreen = '#B5CEA8',
  vscRed = '#F44747',
  vscOrange = '#CE9178',
  vscLightRed = '#D16969',
  vscYellowOrange = '#D7BA7D',
  vscYellow = '#DCDCAA',
  vscDarkYellow = '#FFD602',
  vscPink = '#C586C0',

  -- Other ui specific colors
  vscUiBlue = '#084671',
  vscUiOrange = '#f28b25',
  vscPopupHighlightLightBlue = '#d7eafe',
}

return { components = components, palette = palette, terminal = terminal, vscode = vscode }

