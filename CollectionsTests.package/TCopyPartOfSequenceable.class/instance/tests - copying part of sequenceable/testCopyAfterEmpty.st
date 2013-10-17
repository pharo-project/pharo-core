testCopyAfterEmpty
	| result |
	result := self empty copyAfter: self collectionWithoutEqualElements first.
	self assert: result isEmpty.
	