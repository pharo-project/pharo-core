layout: aBrick in: newBounds
	
	aBrick subbricks
		inject: 0
		into: [ :topOffset :each |
			|left top maxHeight extent|
			topOffset := topOffset + each layoutProperties marginTop.
			
			left := each layoutProperties marginLeft.
			top := topOffset.
			
			maxHeight := (each layoutProperties maxHeightBlock value: each) >= 0
						ifTrue: [ each layoutProperties maxHeightBlock value: each ]
						ifFalse: [ SmallInteger maxVal ].
			
			extent := self extentOf: each in: aBrick.
			extent := extent x @ (extent y min: maxHeight).
			
			each isBrick
				ifTrue: [ each brickBounds: ((left@top) extent: extent) ]
				ifFalse: [ each bounds: (((left@top) extent: extent) translateBy: aBrick globalBounds origin) ].
				
			topOffset + each height + each layoutProperties marginBottom.
		]

	