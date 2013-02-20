as yet unclassified
testReturnUnionUnionInt
	| s |
	NBTestUnionWithUnion rebuildFieldAccessors.
	NBTestUnionIntSize rebuildFieldAccessors.
	NBNativeCodeGen removeNativeCodeFrom: self class >> #returnUnionUnionInt:.
	s := self returnUnionUnionInt: 2344.
	self assert: s union x = 2344