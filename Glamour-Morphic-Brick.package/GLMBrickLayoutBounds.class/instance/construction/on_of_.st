on: aRectangle of: aBrick
	|left top right bottom|
	
	aRectangle ifNil: [ ^ self ].
	
	bounds := aRectangle.
	
	left := bounds origin x.
	top := bounds origin y.
	right := bounds corner x.
	bottom := bounds corner y.
	
	innerBounds := ((left + aBrick layoutProperties paddingLeft)@(top + aBrick layoutProperties paddingTop)) corner: ((right - aBrick layoutProperties paddingRight)@(bottom - aBrick layoutProperties paddingBottom)).
	outerBounds := ((left - aBrick layoutProperties marginLeft)@(top - aBrick layoutProperties marginTop)) corner: ((right + aBrick layoutProperties marginRight)@(bottom + aBrick layoutProperties marginBottom)).