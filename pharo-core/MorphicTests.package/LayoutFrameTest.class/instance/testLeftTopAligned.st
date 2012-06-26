tests
testLeftTopAligned
	| lf rectangle |
	lf := LayoutFrame new
		leftFraction: 0 offset: 10;
		topFraction: 0 offset: 10;
		rightFraction: 0 offset: 60;
		bottomFraction: 0 offset: 25;
		yourself.
	rectangle := lf layout: nil in: (50@10 corner: 150@70).
	self assert: (60@20 corner: 110@35) = rectangle