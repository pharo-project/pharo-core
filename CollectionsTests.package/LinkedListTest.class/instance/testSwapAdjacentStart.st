tests - swap
testSwapAdjacentStart
	|list|
	list := LinkedList with: 5 with: 4 with: 3 with: 2 with: 1.
	
	list swap: 1 with: 2.
	self assert: (list at: 1) equals: 4.
	self assert: (list at: 2) equals: 5.
	self assert: list first equals: 4.