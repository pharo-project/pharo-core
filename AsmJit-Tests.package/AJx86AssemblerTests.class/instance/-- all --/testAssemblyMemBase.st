testAssemblyMemBase
	
	asm 
		mov: EAX ptr  -> EAX;
		mov: ESP ptr -> EAX;
		mov: EBP ptr -> EAX.
	
	self assert: asm bytes = #(16r8B 0 16r8B 16r04 16r24 16r8B 16r45 16r00) asByteArray