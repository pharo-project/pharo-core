tests
testNextLineCR
	| result tail |
	self contents: #(97 97 97 13 98 98 98).
	result := stream nextLine.
	self assert: result = #(97 97 97) asByteArray.
	tail := stream next: 3.
	self assert: tail = #(98 98 98) asByteArray