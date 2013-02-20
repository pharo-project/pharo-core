as yet unclassified
testReturnUnionWithStructInt
	| s |
	NBTestUnionWithStructure rebuildFieldAccessors.
	NBTestStructure9bytes rebuildFieldAccessors.
	NBNativeCodeGen removeNativeCodeFrom: self class >> #returnUnionWithStructInt:.
	s := self returnUnionWithStructInt: 300.
	self assert: s z = 300