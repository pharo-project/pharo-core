setTitleParametersFor: aMenuTitle 
	| menuTitleColor menuTitleBorderColor |
	self theme currentSettings preferRoundCorner
		ifTrue: [aMenuTitle useRoundedCorners].

	menuTitleColor := self theme currentSettings autoMenuColor
				ifTrue: [self color darker]
				ifFalse: [self theme menuTitleColorFor: 
						((UIManager default respondsTo: #modalMorph)
							ifTrue: [UIManager default modalMorph]
							ifFalse: [nil])].

	menuTitleBorderColor := self theme currentSettings menuTitleBorderColor.

	aMenuTitle
		color: menuTitleColor;
		borderWidth: 0;
		borderColor: menuTitleBorderColor;
		vResizing: #shrinkWrap;
		wrapCentering: #center;
		cellPositioning: #topLeft;
		maxCellSize:World width /2;
		clipSubmorphs:true;
		layoutInset: 0.
