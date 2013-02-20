as yet unclassified
testReturnUnionUnionDouble
	| s dp |
	NBTestUnionWithUnion rebuildFieldAccessors.
	NBTestUnionIntSize rebuildFieldAccessors.
	NBNativeCodeGen removeNativeCodeFrom: self class >> #returnUnionUnionDouble:.
	s := self returnUnionUnionDouble: 2.3.

	self assert: (s z closeTo: 2.3)