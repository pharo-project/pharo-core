failure code
failWithCode: aCode

	asm 
		mov: aCode to: EAX;
		jmp: self failedWithCodeLabel