as yet unclassified
testReturnStruct1Byte

	| s |
	NBTestStructure1byte rebuildFieldAccessors.
	NBTestNestedStructure rebuildFieldAccessors.
	
	NBNativeCodeGen removeNativeCodeFrom: self class >> #returnStruct1Byte.
	
	s := self returnStruct1Byte.
	
	self assert: s field = 42.