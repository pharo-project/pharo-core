tests-unclean
testUncleanCachedBlockClosure
	| closure materializedClosure |
	closure := self class blockClosureWithSelfSend becomeCached.
	materializedClosure := self resultOfSerializeAndMaterialize: closure.
	closure assertWellMaterializedInto: materializedClosure in: self.
	self assert: materializedClosure once = closure once.
	self assert: materializedClosure value = closure value