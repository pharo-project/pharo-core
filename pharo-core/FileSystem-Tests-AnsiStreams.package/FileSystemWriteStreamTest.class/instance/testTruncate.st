tests
testTruncate
	stream 
		nextPutAll: #(42 43 44 45 46);
		flush;
		position: 4;
		truncate.
	self assert: self contents = #(42 43 44) asByteArray