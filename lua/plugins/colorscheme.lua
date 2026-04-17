return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
	floats = "transparent",
      },
        on_highlights = function(hl, c)
    	  hl.TabLineFill = { bg = "#1a1b26" }
     	  hl.LspInlayHint = {
		bg = "NONE",
		fg = "#6b7089",
 		italic = true,
	  }
	  hl.LspReferenceText = { bg = "NONE" }
	  hl.LspReferenceRead = { bg = "NONE" }
	  hl.LspReferenceWrite = { bg = "NONE" }
	  hl.DiagnosticUnnecessary = {
 		fg = "#5c6370",
		italic = true,
	  }
	end,
    },
  },
}
