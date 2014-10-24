addTableLayoutMenuItems: aMenu hand: aHand
	| menu sub |
	menu := UIManager default newMenuIn: self for: self.
	menu addUpdating: #hasReverseCellsString action: #changeReverseCells.
	menu addUpdating: #hasClipLayoutCellsString action: #changeClipLayoutCells.
	menu addUpdating: #hasRubberBandCellsString action: #changeRubberBandCells.
	menu addLine.
	menu add: 'change cell inset...' action: #changeCellInset:.
	menu add: 'change min cell size...' action: #changeMinCellSize:.
	menu add: 'change max cell size...' action: #changeMaxCellSize:.
	menu addLine.

	sub := UIManager default newMenuIn: self for: self.
	#(leftToRight rightToLeft topToBottom bottomToTop) do:[:sym|
		sub addUpdating: #listDirectionString: target: self selector: #changeListDirection: argumentList: (Array with: sym)].
	menu add: 'list direction' translated subMenu: sub.

	sub := UIManager default newMenuIn: self for: self.
	#(none leftToRight rightToLeft topToBottom bottomToTop) do:[:sym|
		sub addUpdating: #wrapDirectionString: target: self selector: #wrapDirection: argumentList: (Array with: sym)].
	menu add: 'wrap direction' translated subMenu: sub.

	sub := UIManager default newMenuIn: self for: self.
	#(center topLeft topRight bottomLeft bottomRight topCenter leftCenter rightCenter bottomCenter) do:[:sym|
		sub addUpdating: #cellPositioningString: target: self selector: #cellPositioning: argumentList: (Array with: sym)].
	menu add: 'cell positioning' translated subMenu: sub.

	sub := UIManager default newMenuIn: self for: self.
	#(topLeft bottomRight center justified) do:[:sym|
		sub addUpdating: #listCenteringString: target: self selector: #listCentering: argumentList: (Array with: sym)].
	menu add: 'list centering' translated subMenu: sub.

	sub := UIManager default newMenuIn: self for: self.
	#(topLeft bottomRight center justified) do:[:sym|
		sub addUpdating: #wrapCenteringString: target: self selector: #wrapCentering: argumentList: (Array with: sym)].
	menu add: 'wrap centering' translated subMenu: sub.

	sub := UIManager default newMenuIn: self for: self.
	#(none equal) do:[:sym|
		sub addUpdating: #listSpacingString: target: self selector: #listSpacing: argumentList: (Array with: sym)].
	menu add: 'list spacing' translated subMenu: sub.

	sub := UIManager default newMenuIn: self for: self.
	#(none localRect localSquare globalRect globalSquare) do:[:sym|
		sub addUpdating: #cellSpacingString: target: self selector: #cellSpacing: argumentList: (Array with: sym)].
	menu add: 'cell spacing' translated subMenu: sub.

	aMenu ifNotNil:[aMenu add: 'table layout' translated subMenu: menu].
	^menu