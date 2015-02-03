on: aRectangle of: aBrick
	|left top right bottom|
	
	aRectangle ifNil: [ ^ self ].
	
	bounds := aRectangle.
	
	left := bounds origin x.
	top := bounds origin y.
	right := bounds corner x.
	bottom := bounds corner y.
	
	innerBounds := ((left + aBrick paddingLeft)@(top + aBrick paddingTop)) corner: ((right - aBrick paddingRight)@(bottom - aBrick paddingBottom)).
	outerBounds := ((left - aBrick marginLeft)@(top - aBrick marginTop)) corner: ((right + aBrick marginRight)@(bottom + aBrick marginBottom)).