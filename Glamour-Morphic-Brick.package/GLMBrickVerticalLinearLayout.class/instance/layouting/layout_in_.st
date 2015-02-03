layout: aBrick in: newBounds
	|arguments|
	arguments := self prepareArgumentsFor: aBrick.
	
	aBrick subbricks
		inject: (self layoutInjection: aBrick withArguments: arguments)
		into: [ :topOffset :each |
			self prepareLayout: each.
			
			(self supportsFloating: each layoutProperties floating) ifFalse: [
				|layoutBounds|
			
				layoutBounds := GLMBrickLayoutBounds on: (self boundsOf: each in: aBrick withArguments: arguments) of: each.
				layoutBounds translateBy: (0@topOffset).
				layoutBounds moveOuterToOrigin.
			
				self setNewBounds: layoutBounds to: each in: aBrick.
			
				topOffset + layoutBounds outerBounds height ]
			ifTrue: [ topOffset + (self layoutFloating: each in: newBounds withArguments: arguments) ] ]