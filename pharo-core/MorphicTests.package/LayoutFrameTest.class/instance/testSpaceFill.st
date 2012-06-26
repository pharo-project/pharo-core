tests
testSpaceFill
	| lf rectangle |
	lf := LayoutFrame new
			leftFraction: 0 offset: 0;
			topFraction: 0 offset: 0;
			rightFraction: 1 offset: 0;
			bottomFraction: 1 offset: 0;
			yourself.
	rectangle := lf layout: nil in: (50@10 corner: 150@70).
	self assert: (50@10 corner: 150@70) = rectangle