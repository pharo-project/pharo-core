strLen: gen
	" input: EAX - pointer to char* string
	 output: ECX - string length "
	| loop end asm |
	asm := gen asm.
	
	loop := asm uniqueLabelName: 'loop'.
	end := asm uniqueLabelName: 'end'.
	asm 
		mov: EAX to: ECX;
	label: loop;
		cmp: ECX ptr8 with: 0;
		je: end;
		inc: ECX;
		jmp: loop;
	label: end;
		sub: ECX with: EAX.
		
	^ ECX
