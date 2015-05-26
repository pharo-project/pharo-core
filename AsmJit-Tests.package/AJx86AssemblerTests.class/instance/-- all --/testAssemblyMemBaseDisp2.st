testAssemblyMemBaseDisp2

	asm 
		mov: EAX ptr - 1 -> EAX;
		mov: EBX ptr + ECX * 2 - 5 -> EAX.
	
	self assert: asm bytes = #(16r8B 16r40 16rFF 16r8B 16r44 16r4B 16rFB) asByteArray