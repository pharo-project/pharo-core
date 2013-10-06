emitQWord: dword

 	"Emit a qword (8 bytes) in little-endian order (since our target it x86 anyways)"
	
	self 
		emitByte: (dword bitAnd: 255);
		emitByte: (dword>>8 bitAnd: 255);
		
		emitByte: (dword>>16 bitAnd: 255);
		emitByte: (dword>>24 bitAnd: 255);
		
		emitByte: (dword>>32 bitAnd: 255);
		emitByte: (dword>>40 bitAnd: 255);
		
		emitByte: (dword>>48 bitAnd: 255);
		emitByte: (dword>>56 bitAnd: 255)
		
