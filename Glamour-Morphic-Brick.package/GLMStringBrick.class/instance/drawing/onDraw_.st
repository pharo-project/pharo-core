onDraw: aCanvas
	super onDraw: aCanvas.
	aCanvas
		drawString: self text
		at: self calculateTextPosition
		font: self font
		color: self textColor