as yet unclassified
testReturnStructWithCallback

	| s callback|
	NBTestStructureWithCallback rebuildFieldAccessors.
	
	NBNativeCodeGen removeNativeCodeFrom: self class >> #returnStructWithCallback:.
	callback := NBQSortCallback on: [:a :b | a < b].
	s := self returnStructWithCallback: callback.
	
	self assert: s x = 1.
	self assert: s callback trunk  = callback trunk.
	self assert: s y = 3.