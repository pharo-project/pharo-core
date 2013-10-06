slopes: knots 
	"Choose slopes according to state of polygon"
	self isCurvy
		ifFalse: [^ knots segmentedSlopes].
	^ (closed
			and: [self isCurvier])
		ifTrue: [knots closedCubicSlopes]
		ifFalse: [knots naturalCubicSlopes]