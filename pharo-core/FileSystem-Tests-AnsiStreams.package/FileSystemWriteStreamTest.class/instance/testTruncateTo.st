tests
testTruncateTo
	stream nextPutAll: #(42 43 44 45 46).
	stream flush.
	stream truncateTo: 3.
	self assert: self contents = #(42 43 44) asByteArray