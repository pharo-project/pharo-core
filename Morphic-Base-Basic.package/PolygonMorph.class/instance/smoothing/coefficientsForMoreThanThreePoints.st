coefficientsForMoreThanThreePoints 
	"Less than three points handled as segments by our lineSegmentsDo:"
	| verts coefficients vertXs slopeXs vertYs slopeYs bestSegments |
	verts := self vertices. 
	(self isCurvier not and: [ closed ]) ifTrue: [
		verts := verts , verts first asOrderedCollection].
	
	coefficients := {
		vertXs := verts collect: [:p | p x asFloat].
		slopeXs := self slopes: vertXs. 
		self changeInSlopes: slopeXs of: vertXs .
		self changeOfChangesInSlopes: slopeXs of: vertXs. 
		vertYs := verts collect: [:p | p y asFloat].
		slopeYs := self slopes: vertYs.
		self changeInSlopes: slopeYs of: vertYs.
		self changeOfChangesInSlopes: slopeYs of: vertYs. 
		Array new: verts size withAll: 12}.
		
		
	bestSegments := (1 to: verts size) collect: [:i | (self transform: coefficients toCubicPointPolynomialAt: i) bestSegments].
	coefficients at: 9 put:bestSegments.

	self isCurvier not & closed ifTrue: [
		coefficients := coefficients collect: [:each | each allButLast]].
	
	curveState := {coefficients. nil. nil}.
	self computeNextToEndPoints.
	^ coefficients