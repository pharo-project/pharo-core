layoutProportional: aCollection in: aBrick position: aSymbol
	| fullWidth eachWidth index |
	aCollection isEmpty ifTrue: [ ^ self ].
	
	fullWidth := aBrick innerBounds width.
	index := 0.
	aCollection inject: aBrick paddingLeft into: [ :leftOffset :each |
		|layoutBounds|
		
		self sendEvent: (GLMBrickLayoutStacked new index: (index + 1); position: aSymbol; yourself) to: each.
		
		eachWidth := ((fullWidth - leftOffset) / (aCollection size - index)) ceiling.
		
		layoutBounds := GLMBrickLayoutBounds on: each brickBounds of: each.
		index = 0
			ifTrue: [ layoutBounds makeOuterBoundsFitWidth: (((self maxWidthOf: each) max: eachWidth) min: (fullWidth - leftOffset)) ]
			ifFalse: [				
				(index = (aCollection size - 1))
					ifFalse: [ layoutBounds makeOuterBoundsFitWidth: (eachWidth min: (self maxWidthOf: each)) ]
					ifTrue: [ layoutBounds makeOuterBoundsFitWidth: eachWidth ] ].
		
		layoutBounds translateBy: (leftOffset@0).
		self setNewBounds: layoutBounds to: each in: aBrick.
		index := index + 1.
		leftOffset + layoutBounds outerBounds width ]