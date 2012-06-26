tests-clean
testCleanCachedBlockClosure
	| closure materializedClosure |
	closure := [ 42 ] becomeCached.
	materializedClosure := self resultOfSerializeAndMaterialize: closure.
	closure assertWellMaterializedInto: materializedClosure in: self.
	self assert: materializedClosure once = 42.
	self assert: materializedClosure value = 42