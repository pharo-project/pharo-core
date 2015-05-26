compact
"The HeapCompact function attempts to compact a specified heap. It compacts the heap by coalescing adjacent free blocks of memory and decommitting large free blocks of memory."
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>


	^ self nbCall: #( SIZE_T HeapCompact (self , 0) )