nbBeginsWithByteString: prefix
"an assembler implementation of #beginsWith: ,
note, works only for byte strings "

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	
	^ self nbCallout function: #( oop (oop self, oop prefix) ) emit: [:gen :proxy :asm |
		| string sz1 prefixStr sz2 returnFalse done |
		
		string := gen reserveTemp.
		sz1 := gen reserveTemp.
		prefixStr := gen reserveTemp.
		sz2 := gen reserveTemp.
		returnFalse := asm uniqueLabelName: 'returnFalse'.
		done := asm uniqueLabelName: 'done'.
		
		asm mov: asm ESP ptr to: asm EAX  "self ".
		proxy varBytesFirstFieldOf:  asm EAX.
		asm mov: asm EAX to: string.

		asm pop: asm EAX  "self ".
		proxy byteSizeOf: asm EAX. 
		asm mov: asm EAX to: sz1.


		asm mov: asm ESP ptr to: asm EAX  "self ".
		proxy varBytesFirstFieldOf: asm EAX.
		asm mov: asm EAX to: prefixStr.

		asm pop: asm EAX  "self ".
		proxy byteSizeOf: asm EAX. 
		asm mov: asm EAX to: sz2.
		
		asm 
			mov: sz1 to: asm EAX;
			cmp: asm EAX with: sz2;
			jl: returnFalse.

		asm 
			mov: string to: asm ESI;
			mov: prefixStr to: asm EDI;
			mov: sz2 to: asm ECX;
			cld;
			repe; cmpsb;
			
			cmp: asm ECX with: 0;
			jnz: returnFalse.

		proxy trueObject.
		asm jmp: done.

		asm label: returnFalse.
		proxy falseObject.
		asm label: done
	] 
