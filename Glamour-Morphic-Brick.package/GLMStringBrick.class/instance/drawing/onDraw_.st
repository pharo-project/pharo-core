onDraw: aCanvas

	super onDraw: aCanvas.
	
	self calculateHighlightingBounds do: [ :each |
		self highlightingLogic
			ifNil: [ aCanvas line: each bottomLeft to: each bottomRight width: 1 color: self textColor ]
			ifNotNil: [ self highlightingLogic cull: aCanvas cull: each ] ].
	
	aCanvas pathTransform restoreAfter: [
		"Draw the label centered on the position"
		aCanvas pathTransform translateBy: self calculateTextPosition.
		aCanvas
			setFont: self font;
			setPaint: self textColor;
			drawString: self text.
	]