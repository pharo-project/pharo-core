code pane menu
codePaneMenu: aMenu shifted: shifted
	aMenu add: 'run to here' target: self selector: #runToSelection: argument: thisContext sender receiver selectionInterval.
	aMenu addLine.
	super codePaneMenu: aMenu shifted: shifted.
	^aMenu.