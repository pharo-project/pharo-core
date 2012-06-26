tests
testNextInto
	| result buffer |
	self contents: #(1 2 3 4 5).
	buffer := ByteArray new: 3.
	result := stream nextInto: buffer.
	self assert: result == buffer.
	self assert: result = #(1 2 3) asByteArray