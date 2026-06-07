return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  ft = { 'markdown' },
  opts = {
    -- Render in normal mode too so preview is always visible
    render_modes = true,
    anti_conceal = {
      enabled = true,
      above = 2,
      below = 2,
    },
    heading = {
      enabled = true,
      sign = false,
      position = 'inline',
      icons = { ' ', ' ', ' ', ' ', ' ', ' ' },
      backgrounds = {
        'RenderMarkdownH1Bg',
        'RenderMarkdownH2Bg',
        'RenderMarkdownH3Bg',
        'RenderMarkdownH4Bg',
        'RenderMarkdownH5Bg',
        'RenderMarkdownH6Bg',
      },
      foregrounds = {
        'RenderMarkdownH1',
        'RenderMarkdownH2',
        'RenderMarkdownH3',
        'RenderMarkdownH4',
        'RenderMarkdownH5',
        'RenderMarkdownH6',
      },
      border = false,
      width = 'block',
      left_pad = 1,
      right_pad = 1,
      min_width = 20,
    },
    code = {
      enabled = true,
      sign = false,
      style = 'full',
      position = 'left',
      language_icon = true,
      language_name = true,
      border = 'thin',
      above = '▄',
      below = '▀',
      width = 'block',
      left_pad = 2,
      right_pad = 2,
      min_width = 45,
    },
    bullet = {
      enabled = true,
      icons = { '●', '○', '◆', '◇' },
      left_pad = 0,
      right_pad = 1,
    },
    checkbox = {
      enabled = true,
      bullet = false,
      unchecked = {
        icon = '○ ',
        highlight = 'RenderMarkdownUnchecked',
      },
      checked = {
        icon = '● ',
        highlight = 'RenderMarkdownChecked',
      },
    },
    dash = {
      enabled = true,
      icon = '─',
      width = 'full',
    },
    quote = {
      enabled = true,
      icon = '▎',
    },
    link = {
      enabled = true,
    },
    table = {
      enabled = true,
    },
    latex = {
      enabled = false,
    },
  },
}
