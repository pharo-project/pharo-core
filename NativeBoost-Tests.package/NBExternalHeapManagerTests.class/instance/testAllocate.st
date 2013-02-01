as yet unclassified
testAllocate
	" 
		self new testAllocate 
	
	"
	| heap address size |
	
	size := 100.
	heap := self newHeap.
	
	address := heap allocate: size.
	
	self assert:  ( heap isValidAddress: address size: size ) .
	self assert:   heap totalAllocatedMemory = size.
	self assert:   heap numPages = 1 .
	self assert:  heap numAllocatedBlocks = 1.

	heap free: address.

	self assert: heap numAllocatedBlocks = 0.
	self assert: heap numPages = 0 .
	self assert: heap numBlocks = 0 .
	self assert:  (heap isValidAddress: address size: size) not .
	
	self assert: heap totalAllocatedMemory = 0.
	
	
	