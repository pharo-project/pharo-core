drawing
drawMessageOn: aCanvas in: rectangle 
	self hasMessage ifFalse: [ ^ self ].
	context model isEmpty ifFalse: 
		[ aCanvas 
			line: rectangle topLeft + (0 @ 2)
			to: rectangle topRight + (-3 @ 2)
			color: Color darkGray ].
	self 
		drawModelMessageOn: aCanvas
		in: rectangle.
	self 
		drawPageCountMessageOn: aCanvas
		in: rectangle