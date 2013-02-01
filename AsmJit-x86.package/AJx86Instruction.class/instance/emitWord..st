emitting code
emitWord: aWord 

	"little-endian"
	
	self 
		emitByte: (aWord bitAnd: 255);
		emitByte: ((aWord >> 8) bitAnd: 255)
	