testReturnStruct1Byte

	| s |
	
	NBNativeCodeGen removeNativeCodeFrom: self class >> #returnStruct1Byte.
	
	s := self returnStruct1Byte.
	
	self assert: s field = 42.