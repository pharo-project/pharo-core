drawing
drawOn: aCanvas 
	| tRect sRect columnScanner colorToUse columnLeft |
	tRect := self toggleRectangle.
	sRect := bounds withLeft: tRect right + 4.
	self 
		drawToggleOn: aCanvas
		in: tRect.
	colorToUse := complexContents preferredColor ifNil: [ color ].
	icon isNil ifFalse: 
		[ aCanvas 
			translucentImage: icon
			at: sRect left @ (self top + ((self height - icon height) // 2)).
		sRect := sRect left: sRect left + icon width + 2 ].
	(container columns isNil or: [ (contents asString indexOf: Character tab) = 0 ]) 
		ifTrue: 
			[ sRect := sRect top: (sRect top + sRect bottom - self fontToUse height) // 2.
			aCanvas 
				drawString: contents asString
				in: sRect
				font: self fontToUse
				color: colorToUse ]
		ifFalse: 
			[ columnLeft := sRect left.
			columnScanner := contents asString readStream.
			container columns do: 
				[ :width | | columnData columnRect | 
				columnRect := columnLeft @ sRect top extent: width @ sRect height.
				columnData := columnScanner upTo: Character tab.
				columnData isEmpty ifFalse: 
					[ aCanvas 
						drawString: columnData
						in: columnRect
						font: self fontToUse
						color: colorToUse ].
				columnLeft := columnRect right + 5 ] ]