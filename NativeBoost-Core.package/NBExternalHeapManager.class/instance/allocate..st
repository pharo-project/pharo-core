memory operations
allocate: numBytes
	"Allocate a numBytes on heap, answer an address to first byte of allocated memory"
	
	
	^ sema critical: [ 	| freeBlock page |

		"yes, the free space search is implemented naively, by now"
		freeBlock := freeBlocks 
			detect: [:block | block length >= numBytes]
			ifNone: [ page := self allocatePage: numBytes.  page firstBlock ].

		freeBlock reserve: numBytes for: self.
		reservedBlocks at: freeBlock address put: freeBlock.
		freeBlock address
	]
