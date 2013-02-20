emitting code
coerceReturnValue: gen
	"
	Copy a null-terminated C string into a newly created instance of ByteString
	input - char* string in EAX
	output - String oop in EAX "
	
	| cPtr strLen oop asm proxy notNull done |

	asm := gen asm.
	proxy := gen proxy.
	
	cPtr := gen reserveTemp.
	strLen := gen reserveTemp.
	oop := gen reserveTemp.
	notNull := asm uniqueLabelName: 'notNull'.
	done := asm uniqueLabelName: 'done'.
	
	
	asm mov: EAX to: cPtr.

	"check if return value is NULL, then answer nil instead" 
	asm 
		or: EAX with: EAX;
		jnz: notNull.

	proxy nilObject.
	asm jmp: done.		

	asm label: notNull.
	
	"count a number of characters"
	asm mov: (self strLen: gen) to: strLen.

	proxy classString.
	proxy instantiateClass: EAX indexableSize: strLen.
	
	asm mov: EAX to: oop. "oop"
	
	"copy the string"
	proxy firstIndexableField: EAX.
	asm 
		push: ESI;
		push: EDI;
		mov: cPtr to: ESI;
		mov: EAX to: EDI;
		mov: strLen to: ECX;
		rep; movsb; 
		pop: EDI;
		pop: ESI;
		mov: oop to: EAX.

	asm label: done.
		
	gen releaseTemps: 3.
