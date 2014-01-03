slopes: knots 
	"Choose slopes according to state of polygon"
	self isCurvy ifFalse: [^ self segmentedSlopesOf: knots ].
	^ (closed and: [self isCurvier])
		ifTrue: [ self closedCubicSlopesOf: knots ]
		ifFalse: [ self naturalCubicSlopesOf: knots ]