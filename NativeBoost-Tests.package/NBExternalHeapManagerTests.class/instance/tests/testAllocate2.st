testAllocate2
	" 
		self new testAllocate2 
	
	"
	| heap addr1 addr2 |
	
	heap := self newHeap.

	addr1 := heap allocate: 1.
	addr2 := heap allocate: 2.
	
	self assert:  heap totalAllocatedMemory = 3 .
	self assert:  heap numAllocatedBlocks = 2 .

	heap free: addr1.

	self assert:  heap numAllocatedBlocks = 1.
	self assert:  heap totalAllocatedMemory = 2 .

	heap free: addr2.
	
	self assert:  heap numPages = 0 .
	self assert: heap numBlocks = 0 .
	self assert:  heap totalAllocatedMemory = 0 .
	
	
	
