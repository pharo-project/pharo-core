tests
testUpTo
	| result |
	self contents: #(1 2 3 4 5).
	result := stream upTo: 4.
	self assert: result = #(1 2 3) asByteArray