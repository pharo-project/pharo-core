*Morphic-Balloon-examples
example1
	| c |
	c := Bezier3Segment new from: 0@0 via: 0@100 and: 100@0 to: 100@100.
	^ c asBezierShape