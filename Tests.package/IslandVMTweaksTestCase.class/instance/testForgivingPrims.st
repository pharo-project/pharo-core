testing
testForgivingPrims
	| aPoint anotherPoint array1 array2 |
	aPoint := Point x: 5 y: 6.
	anotherPoint := Point x: 7 y: 8.  "make sure there are multiple points floating around"
	anotherPoint.  "stop the compiler complaining about no uses"

	self should: [ (self classOf:  aPoint) = Point ].
	self should: [ (self instVarOf: aPoint at: 1) = 5 ].
	self instVarOf: aPoint at: 2 put: 10.
	self should: [ (self instVarOf: aPoint at: 2) = 10 ].

	self someObject.
	self nextObjectAfter: aPoint.

	self should: [ (self someInstanceOf: Point) class = Point ].
	self should: [ (self nextInstanceAfter: aPoint) class = Point ].


	array1 := Array with: 1 with: 2 with: 3.
	array2 := Array with: 4 with: 5 with: 6.

	self replaceIn: array1 from: 2 to: 3 with: array2 startingAt: 1.
	self should: [ array1 = #(1 4 5) ].

