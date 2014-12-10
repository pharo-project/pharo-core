layout: aBrick in: newBounds
	|arguments|
	arguments := self prepareArgumentsFor: aBrick.
	
	aBrick subbricks do: [:each |
			self prepareLayout: each.
			
			(self supportsFloating: each layoutProperties floating) ifFalse: [
				|layoutBounds|
			
				layoutBounds := GLMBrickLayoutBounds on: (self boundsOf: each in: aBrick withArguments: arguments) of: each.
				layoutBounds moveOuterToOrigin.
			
				self setNewBounds: layoutBounds to: each in: aBrick ]
			ifTrue: [ self layoutFloating: each in: newBounds withArguments: arguments ] ]