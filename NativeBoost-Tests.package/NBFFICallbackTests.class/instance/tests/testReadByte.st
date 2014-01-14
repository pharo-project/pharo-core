testReadByte

	| arr |
	
	arr := #(240 2 3 4 ) asByteArray.
	
	self assert: (self readByte: arr) == 240