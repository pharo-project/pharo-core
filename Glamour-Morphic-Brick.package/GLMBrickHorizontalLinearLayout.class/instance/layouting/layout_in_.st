layout: aBrick in: newBounds
	|arguments|
	
	arguments := self prepareArgumentsFor: aBrick.
	
	aBrick subbricks
		inject: 0
		into: [ :leftOffset :each |
			self prepareLayout: each.
			(self supportsFloating: each layoutProperties floating) ifFalse: [
				|layoutBounds|
			
				layoutBounds := GLMBrickLayoutBounds on: (self boundsOf: each in: aBrick withArguments: arguments) of: each.
				layoutBounds translateBy: (leftOffset@0).
				layoutBounds moveOuterToOrigin.
			
				self setNewBounds: layoutBounds to: each in: aBrick.
			
				leftOffset + layoutBounds outerBounds width ]
			ifTrue: [ leftOffset  + ( self layoutFloating: each in: newBounds withArguments: arguments) ] ]

	