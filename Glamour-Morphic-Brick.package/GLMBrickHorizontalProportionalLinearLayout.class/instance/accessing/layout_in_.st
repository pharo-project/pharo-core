layout: aBrick in: newBounds
	
	|allowedWidth maxPercent|
	allowedWidth := aBrick width.
	maxPercent := 100.
	
	aBrick subbricks do: [ :each |
		(self percentageWidthOf: each in: aBrick) < (each layoutProperties minWidth) ifTrue: [ 
			allowedWidth := allowedWidth - each layoutProperties minWidth.
			maxPercent := maxPercent - each layoutProperties horizontalPercent.
		]
	].
	
	aBrick subbricks
		inject: 0
		into: [ :currentWidth :each |
			|left top extent maxWidth newWidth|
			top := each layoutProperties marginTop.
			
			newWidth := currentWidth + each layoutProperties marginLeft.
			left := newWidth.
						
			maxWidth := (each layoutProperties maxWidthBlock value: each) >= 0
						ifTrue: [ each layoutProperties maxWidthBlock value: each ]
						ifFalse: [ SmallInteger maxVal ].
			
			(self percentageWidthOf: each in: aBrick) < (each layoutProperties minWidth) ifTrue: [ 
				extent := (each layoutProperties minWidth - each layoutProperties marginLeft - each layoutProperties marginRight) @ ((self extentOf: each in: aBrick) y).
			]
			ifFalse: [ 	
				extent := ((((allowedWidth * each layoutProperties horizontalPercent / maxPercent) ceiling) - each layoutProperties marginLeft - each layoutProperties marginRight) min: maxWidth) @ ((self extentOf: each in: aBrick) y).
			].
			
			each isBrick
				ifTrue: [ each brickBounds: ((left@top) extent: extent) ]
				ifFalse: [ each bounds: (((left@top) extent: extent) translateBy: aBrick globalBounds origin) ].
			
			newWidth + each width + each layoutProperties marginRight.
		]
