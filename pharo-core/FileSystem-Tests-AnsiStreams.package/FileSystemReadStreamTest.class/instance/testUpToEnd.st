tests
testUpToEnd
	| result |
	self contents: #(1 2 3 4 5).
	result := stream upTo: 7.
	self assert: result = #(1 2 3 4 5) asByteArray