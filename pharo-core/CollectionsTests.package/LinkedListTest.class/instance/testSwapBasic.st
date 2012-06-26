tests - swap
testSwapBasic
	|list|
	list := LinkedList with: 5 with: 4 with: 3 with: 2 with: 1.
	
	list swap: 2 with: 4.
	self assert: (list at: 2) equals: 2.
	self assert: (list at: 4) equals: 4.
