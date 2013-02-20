misc
return0Code
	" a simple routine, just return 1 (smallinteger = 0)"
	| asm |
	
	^ (asm :=  NativeBoost newAssembler )
		noStackFrame;
		mov: 1 to: asm EAX;
		ret;
		bytes
