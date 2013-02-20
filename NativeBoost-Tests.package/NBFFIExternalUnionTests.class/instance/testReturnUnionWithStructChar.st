as yet unclassified
testReturnUnionWithStructChar
	| s |
	NBTestUnionWithStructure rebuildFieldAccessors.
	NBTestStructure9bytes rebuildFieldAccessors.
	NBNativeCodeGen removeNativeCodeFrom: self class >> #returnUnionWithStructChar:.
	s := self returnUnionWithStructChar: $,.
	self assert: s x = $,