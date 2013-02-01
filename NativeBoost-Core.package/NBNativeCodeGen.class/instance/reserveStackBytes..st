code generation
reserveStackBytes: numBytesOrBlock

	"emit code to reserve a given number of bytes, answer the temp,
	which will hold an allocated block address "
	
	| address |
	address := self reserveTemp.
	^ self reserveStackBytes: numBytesOrBlock andStoreAddrTo: address