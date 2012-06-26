tests
testNextLineCRLF
	| line tail |
	self contents: #(97 97 97 13 10 98 98 98).
	line := stream nextLine.
	self assert: line = #(97 97 97) asByteArray.
	tail := stream next: 3.
	self assert: tail = #(98 98 98) asByteArray