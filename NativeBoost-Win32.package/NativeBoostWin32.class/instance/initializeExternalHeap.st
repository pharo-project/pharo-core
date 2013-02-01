as yet unclassified
initializeExternalHeap

	"initialize external memory heap"

	| bytes |
	bytes := ByteArray new: 4.
	self privCreateHeap: bytes.

	heapHandle := bytes unsignedLongAt: 1 bigEndian: false.
	heapHandle = 0 ifTrue: [ self error: 'Unable to create external heap' ].
	
