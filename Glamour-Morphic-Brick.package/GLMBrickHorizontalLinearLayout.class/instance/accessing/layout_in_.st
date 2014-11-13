layout: aBrick in: newBounds
	
	aBrick subbricks
		inject: 0
		into: [ :currentWidth :each |
			|left top newWidth|
			top := each layoutProperties marginTop.
			
			newWidth := currentWidth + each layoutProperties marginLeft.
			left := newWidth.
			
			each isBrick
				ifTrue: [ each brickBounds: ((left@top) extent: (self extentOf: each in: aBrick)) ]
				ifFalse: [ each bounds: (((left@top) extent: (self extentOf: each in: aBrick)) translateBy: aBrick globalBounds origin) ].
				
			newWidth + each width + each layoutProperties marginRight ]

	