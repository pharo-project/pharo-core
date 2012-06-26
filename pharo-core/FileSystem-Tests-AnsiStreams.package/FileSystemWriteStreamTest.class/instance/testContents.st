tests
testContents
	stream nextPutAll: #(42 43 44).
	self assert: stream contents = #(42 43 44) asByteArray