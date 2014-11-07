layout: aBrick in: newBounds
	
	|allowedHeight maxPercent|
	allowedHeight := aBrick height.
	maxPercent := 100.
	
	aBrick subbricks do: [ :each |
		(self percentageHeightOf: each in: aBrick) < (each layoutProperties minHeight) ifTrue: [ 
			allowedHeight := allowedHeight - each layoutProperties minHeight.
			maxPercent := maxPercent - each layoutProperties verticalPercent.
		]
	].
	
	aBrick subbricks
		inject: 0
		into: [ :height :each |
			|left top extent maxHeight|
			left := each layoutProperties marginLeft.
			
			height := height + each layoutProperties marginTop.
			top := height.
						
			maxHeight := (each layoutProperties maxHeightBlock value: each) >= 0
						ifTrue: [ each layoutProperties maxHeightBlock value: each ]
						ifFalse: [ SmallInteger maxVal ].
			
			(self percentageHeightOf: each in: aBrick) < (each layoutProperties minHeight) ifTrue: [ 
				extent := ((self extentOf: each in: aBrick) x) @ (each layoutProperties minHeight - each layoutProperties marginTop - each layoutProperties marginBottom).
			]
			ifFalse: [ 	
				extent := ((self extentOf: each in: aBrick) x) @ ((((allowedHeight * each layoutProperties verticalPercent / maxPercent) ceiling) - each layoutProperties marginTop - each layoutProperties marginBottom) min: maxHeight).
			].
			
			each isBrick
				ifTrue: [ each brickBounds: ((left@top) extent: extent) ]
				ifFalse: [ each bounds: (((left@top) extent: extent) translateBy: aBrick globalBounds origin) ].
			
			height + each height + each layoutProperties marginBottom.
		]
