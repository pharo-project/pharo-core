memory operations
memCopy: src to: dst size: numBytes
	"Copy the numBytes from src to dst memory buffer.

	src & dst can be either a variable-byte oop or NBExternalAddress instance.
	
	Warning!! Warning!! Warning!! 
	This is a direct memory accees!!! No range checking!!!
	"
	
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout
		options: #( + optAllowByteArraysPtr optAllowExternalAddressPtr);
	 	function: #( void (byte * src, byte * dst, ulong numBytes))
		emit: [:gen |
			| asm temp1 temp2 |
			asm := gen asm.
			temp1 := gen reserveTemp.
			temp2 := gen reserveTemp.

			asm
				cld;
				mov: ESI to: temp1;
				mov: EDI to: temp2;
			
				pop: ESI; " src"
				pop: EDI; "dst"
				pop: ECX; "numBytes"
				rep; movsb;
				mov: temp1 to: ESI;
				mov: temp2 to: EDI
		]