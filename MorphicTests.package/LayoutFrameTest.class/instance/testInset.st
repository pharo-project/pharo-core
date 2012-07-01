tests
testInset
	| lf rectangle |
	lf := LayoutFrame new
			leftFraction: 0 offset: 10;
			topFraction: 0 offset: 10;
			rightFraction: 1 offset: -10;
			bottomFraction: 1 offset: -10;
			yourself.
	rectangle := lf layout: nil in: (50@10 corner: 150@70).
	self assert: (60@20 corner: 140@60) = rectangle