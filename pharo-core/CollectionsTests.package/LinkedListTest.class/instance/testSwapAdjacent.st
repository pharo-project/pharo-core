tests - swap
testSwapAdjacent
	|list|
	list := LinkedList with: 5 with: 4 with: 3 with: 2 with: 1.
	
	list swap: 3 with: 4.
	self assert: (list at: 3) equals: 2.
	self assert: (list at: 4) equals: 3.