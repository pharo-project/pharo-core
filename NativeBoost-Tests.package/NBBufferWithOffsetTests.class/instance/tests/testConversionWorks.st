testConversionWorks 

	| buf offset |
		
	buf := #[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 ] copy.
	offset := NBBufferWithOffset new buffer: buf; offset: 5.
	
	1 to: buf size do: [ :i | | byte |
		offset offset: i - 1.
		byte := self readByte: offset.
		
		self assert: (byte = (buf at: i)).
	].
	
