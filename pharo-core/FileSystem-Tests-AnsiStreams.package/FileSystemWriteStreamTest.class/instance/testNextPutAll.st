tests
testNextPutAll
	stream nextPutAll: #(42 43 44).
	stream flush.
	self assert: self contents = #(42 43 44) asByteArray