geometry
position: aPoint
	"Prevent moving a world (e.g. via HandMorph>>specialGesture:)"

	"for now, let's allow it and see what happens"

	self isWorldMorph ifFalse: [^super position: aPoint].
	super position: aPoint.
	self viewBox ifNotNil: [self viewBox: (aPoint extent: self viewBox extent)].

