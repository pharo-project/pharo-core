as yet unclassified
testStructCopy

	| struct addr string struct2 |
	
	struct := NBTestStructure new.
	
	struct byte: 5;
		long: 10;
		short: 20.
		
	addr := NativeBoost allocate: NBTestStructure instanceSize.
	
	NativeBoost memCopy: struct to: addr size:  NBTestStructure instanceSize.
	struct2 := NBTestStructure fromPointer: addr.
	NativeBoost free: addr.
		  

	self assert: struct2 byte = 5.
	self assert: struct2 long = 10.
	self assert: struct2 short = 20.