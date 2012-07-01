tests - swap
testSwapStartAndEnd
	|list|
	list := LinkedList with: 5 with: 4 with: 3 with: 2 with: 1.
	
	list swap: 1 with: 5.
	self assert: (list at: 1) equals: 1.
	self assert: (list at: 5) equals: 5.
	self assert: list first equals: 1.
	self assert: list last equals: 5.