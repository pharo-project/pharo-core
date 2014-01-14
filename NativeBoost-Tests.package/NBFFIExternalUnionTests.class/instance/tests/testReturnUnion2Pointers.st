testReturnUnion2Pointers

	| s ptr|
	
	NBNativeCodeGen removeNativeCodeFrom: self class >> #returnUnionPointer:.
	ptr := NBExternalAddress fromString: 'abcd'.
	s := self returnUnionPointer: ptr.
	
	self assert: s addr1  =  ptr .
	self assert: s addr2    =  ptr .
	self assert: s addr1 readString = 'abcd'.