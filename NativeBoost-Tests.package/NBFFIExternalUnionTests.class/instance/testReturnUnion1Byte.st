as yet unclassified
testReturnUnion1Byte
	| s |
	NBTestUnion1Byte rebuildFieldAccessors.
	NBNativeCodeGen removeNativeCodeFrom: self class >> #returnUnion1Byte.
	s := self returnUnion1Byte.
	self assert: s field1 = 42.
	self assert: s field2 = 42