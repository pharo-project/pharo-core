code generation
emitDWord: dword

 	"Emit dword (4 bytes) in little-endian order (since our target it x86 anyways)"
	
	self 
		emitByte: (dword bitAnd: 255);
		emitByte: (dword>>8 bitAnd: 255);
		
		emitByte: (dword>>16 bitAnd: 255);
		emitByte: (dword>>24 bitAnd: 255)
		
