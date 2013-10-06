codePaneMenu: aMenu shifted: shifted
	aMenu 
		addAllFromPragma: 'debuggerCodePaneMenu' 
		target: {self. thisContext sender receiver selectionInterval}.
	^super codePaneMenu: aMenu shifted: shifted.
