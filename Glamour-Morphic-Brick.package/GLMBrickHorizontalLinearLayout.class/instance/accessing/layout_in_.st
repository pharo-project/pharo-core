layout: aBrick in: newBounds
	
	aBrick subbricks
		inject: 0
		into: [ :width :each |
			|left top |
			top := each layoutProperties marginTop.
			
			width := width + each layoutProperties marginLeft.
			left := width.
			
			each isBrick
				ifTrue: [ each brickBounds: ((left@top) extent: (self extentOf: each in: aBrick)) ]
				ifFalse: [ each bounds: (((left@top) extent: (self extentOf: each in: aBrick)) translateBy: aBrick globalBounds origin) ].
				
			width + each width + each layoutProperties marginRight.
		]

	