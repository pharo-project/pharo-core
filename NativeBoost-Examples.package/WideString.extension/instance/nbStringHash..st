*NativeBoost-Examples
nbStringHash: speciesHash

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout
		function: #(ulong (oop self , ulong speciesHash)) emit: [:gen |
		| asm proxy rcvr cnt EAX EDX ECX ESI EBX |
		asm := gen asm.
		EAX := asm EAX. EDX := asm EDX. ECX := asm ECX. 
		ESI := asm ESI. EBX := asm EBX.
		
		proxy := gen proxy.
		rcvr := gen reserveTemp.
		cnt := gen reserveTemp.
		
		asm pop: rcvr.
		proxy stSizeOf: rcvr.
		asm mov: EAX to: cnt.  "size"
		proxy firstIndexableField: rcvr.
		asm 
			pop: EDX; "speciesHash"
			push: EBX;
			push: ESI;
			mov: cnt to: ECX;
		label: #loop;
			and: EDX with: 16rFFFFFFF;
			dec: ECX;
			jl: #wedone;
			add: EDX with: EAX ptr; "hash := hash + (aString at: pos) asInteger."
			mov: EDX to: EBX;
			and: EBX with: 16r3FFF;  "low := hash bitAnd: 16383."
			mov: EBX to: ESI;
			imul: ESI with: 16r260D;  " 16r260D * low "
			shr: EDX with: 14; 
			imul: EDX with: 16r260D; "16r260D * (hash bitShift: -14)"
			imul: EBX with: 16r0065; " (16r0065 * low) "
			add: EDX with: EBX;
			and: EDX with: 16383;
			shl: EDX with: 14;   " (16r260D * (hash bitShift: -14) + (16r0065 * low) bitAnd: 16383) * 16384 "
			add: EDX with: ESI;

			add: EAX with: 4;
			jmp: #loop;
		label: #wedone;
			pop: ESI;
			pop: EBX;
			mov: asm EDX to: asm EAX.
			
	].
	
