----------------------------------------------------------------------------------------------------

return {
  require 'pink-as-fox.highlight.common',
  require 'pink-as-fox.highlight.builtin',
  -- standard
  require 'pink-as-fox.highlight.standard.syntax',
  require 'pink-as-fox.highlight.standard.diagnostics',
  require 'pink-as-fox.highlight.standard.help',
  require 'pink-as-fox.highlight.standard.checkhealth',
  require 'pink-as-fox.highlight.standard.git',
  require 'pink-as-fox.highlight.standard.diff',
  -- semantic
  require 'pink-as-fox.highlight.semantic.misc',
  require 'pink-as-fox.highlight.semantic.cmake',
  require 'pink-as-fox.highlight.semantic.cpp',
  require 'pink-as-fox.highlight.semantic.lua',
  require 'pink-as-fox.highlight.semantic.neorg',
  require 'pink-as-fox.highlight.semantic.python',
  require 'pink-as-fox.highlight.semantic.rust',
  require 'pink-as-fox.highlight.semantic.vim',
  -- plugins
  require 'pink-as-fox.highlight.plugin.lazy',
  require 'pink-as-fox.highlight.plugin.nvim-tree',
  require 'pink-as-fox.highlight.plugin.gitsigns',
  require 'pink-as-fox.highlight.plugin.diffview',
  require 'pink-as-fox.highlight.plugin.telescope',
  require 'pink-as-fox.highlight.plugin.nvim-lspconfig',
  require 'pink-as-fox.highlight.plugin.todo-comments',
  require 'pink-as-fox.highlight.plugin.mason',
  require 'pink-as-fox.highlight.plugin.nvim-dap-ui',
  require 'pink-as-fox.highlight.plugin.nvim-cmp',
  require 'pink-as-fox.highlight.plugin.vim-illuminate',
}
