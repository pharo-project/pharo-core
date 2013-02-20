as yet unclassified
testReturnUnionUnionChar
	| s |
	NBTestUnionWithUnion rebuildFieldAccessors.
	NBTestUnionIntSize rebuildFieldAccessors.
	NBNativeCodeGen removeNativeCodeFrom: self class >> #returnUnionUnionChar:.
	s := self returnUnionUnionChar: $,.
	self assert: s x = $,