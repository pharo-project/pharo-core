testing
testEmptyReplace
	| array1 array2 |
	array1 := Array with: 1 with: 2 with: 3 with: 4.
	array2 := Array with: 5 with: 6 with: 7.

	self replaceIn: array1 from: 1 to: 0 with: array2 startingAt: 1.
	self should: [ array1 = #(1 2 3 4) ].
