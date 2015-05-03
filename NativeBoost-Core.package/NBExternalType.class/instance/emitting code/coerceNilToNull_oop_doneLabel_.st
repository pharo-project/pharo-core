coerceNilToNull: gen oop: oop doneLabel: done
	"NOTE: the calling code is responsible for placing the 'done' label such that there's
	no second #push:. This method already handles the push for NULL"
	| asm notNil |
	gen optCoerceNilToNull ifFalse: [ ^ self ].

	asm := gen asm.
	
	notNil := asm uniqueLabelName: 'notNil'.
	gen proxy nilObject.
	asm
		cmp: asm EAX with: oop; "check if oop is nil"
		jne: notNil; "if nil escape"
		xor: asm EAX with: asm EAX; "zero out EAX"
		push: asm EAX; "push EAX onto the stack"
		jmp: done; "exit"
		label: notNil