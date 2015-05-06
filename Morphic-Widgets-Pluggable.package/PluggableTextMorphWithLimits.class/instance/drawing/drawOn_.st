drawOn: aCanvas

	| rect stringColor size top bottom newRect |
	super drawOn: aCanvas.
	size := self textSize.
	rect := self buildRectFrom: self bounds.
	top := self bounds top + self borderWidth.
	bottom := self bounds bottom - self borderWidth.
	stringColor := self stringColor.
	newRect := (rect left-self basicWidth-10)@top corner: (rect right)@bottom.
	aCanvas
		fillRectangle: newRect
		fillStyle: (self backgroundColorFor: newRect ).
	self wantsFrameAdornments ifTrue: [
		self theme drawTextAdornmentsFor: self on: aCanvas].

	(self warningLimit negative or: [ self warningLimit isZero ])
		ifFalse: [ 
			aCanvas 
				drawString: size printString 
				in: rect
				font: TextStyle defaultFont 
				color: stringColor ].