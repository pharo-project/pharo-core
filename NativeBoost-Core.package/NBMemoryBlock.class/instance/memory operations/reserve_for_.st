reserve: numBytes for: heapManager
	"reserve a given number of bytes of memory
	if numBytes < length, then create a smaller block with free memory"
	| leftover |
	self assert: free.
	numBytes > length ifTrue: [ self error: 'can''t reserve more than length of block' ].
	heapManager removeFreeBlock: self.
	numBytes = length ifTrue: [ free := false. ^ self ].
	
	leftover := 
		NBMemoryBlock new
			address: address + numBytes;
			length: length - numBytes;
			left: self; 
			right: right.
	right := leftover.
	length := numBytes.
	free := false.
	heapManager addFreeBlock: leftover.
