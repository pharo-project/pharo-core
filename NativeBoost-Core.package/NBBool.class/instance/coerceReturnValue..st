emitting code
coerceReturnValue: gen
	"convert C Bool to true or false"
	| proxy asm lfalse done |
	proxy := gen proxy.
	asm := gen asm.
	lfalse := asm uniqueLabelName: 'false'.
	done := asm uniqueLabelName: 'done'.
	asm 
		or: asm EAX with: asm EAX;
		je: lfalse.
	proxy trueObject.
	asm jmp: done.
	asm label: lfalse.
	proxy falseObject.
	asm label: done.