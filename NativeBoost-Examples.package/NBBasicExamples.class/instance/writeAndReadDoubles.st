double type
writeAndReadDoubles

	| d bytes result |
	
	d := 1.5 .
	
	bytes := ByteArray new: 8.
	
	self storeDouble: d at: bytes.
	
	result := self readDoubleFrom: bytes.
	
	self assert: (result = d ).