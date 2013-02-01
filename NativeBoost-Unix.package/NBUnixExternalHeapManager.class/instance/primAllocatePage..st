memory pages
primAllocatePage: bytesToAllocate
	| ptr buf |

	buf := ByteArray new: 4.

	self 
		mmapLength: bytesToAllocate 
		prot: self protFlags 
		flags: self mapFlags 
		into: buf.

	ptr := buf unsignedLongAt: 1 bigEndian: false.
	ptr = MAP_FAILED ifTrue: [ self error: 'Unable to map virtual memory' ].
	
	^ ptr

 