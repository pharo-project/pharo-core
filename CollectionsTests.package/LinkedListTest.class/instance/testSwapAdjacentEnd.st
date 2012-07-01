tests - swap
testSwapAdjacentEnd
	|list|
	list := LinkedList with: 5 with: 4 with: 3 with: 2 with: 1.
	
	list swap: 4 with: 5.
	self assert: (list at: 4) equals: 1.
	self assert: (list at: 5) equals: 2.
	self assert: list last equals: 2.