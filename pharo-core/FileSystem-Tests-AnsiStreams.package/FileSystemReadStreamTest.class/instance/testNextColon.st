tests
testNextColon
	| result |
	self contents: #(1 2 3 4 5).
	result := stream next: 3.
	self assert: result = #(1 2 3) asByteArray.