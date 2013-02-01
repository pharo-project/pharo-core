accessing
emitLoad: gen
	| asm |
	asm := gen asm.
	argumentLoader emitLoad: gen to: asm EAX.
	gen optCheckIndirectArgBounds
		ifTrue: [ 
			| typeOk boundsFailed endLabel oop |
			typeOk := asm uniqueLabelName: 'typeOk'.
			boundsFailed := asm uniqueLabelName: 'boundsFailed'.
			endLabel := asm uniqueLabelName: 'end'.
			oop := gen reserveTemp.
			asm mov: asm EAX to: oop.	
			"type checking"
			gen proxy isPointers: oop.
			asm cmp: asm EAX with: 0 asImm.
			asm jne: typeOk.
			gen failWithMessage: 'Type checking failed on indirect argument loading'.
			asm label: typeOk.
			"bounds checking"
			"bigger than 0"
			asm mov: elementIndex asImm to: asm EAX.
			asm cmp: asm EAX with: 0 asImm.
			asm jle: boundsFailed.
			"smaller than slot size"
			gen proxy slotSizeOf: oop.
			asm cmp: asm EAX with: elementIndex asImm.
			asm jl: boundsFailed.
			asm mov: oop to: asm EAX.
			asm jmp: endLabel .
			asm label: boundsFailed.
			gen failWithMessage: 'Bound checking failed on indirect argument loading'.
			asm label: endLabel .
			 ].
	gen proxy fetchPointer: elementIndex - 1 ofObject: asm EAX.
	^ asm EAX