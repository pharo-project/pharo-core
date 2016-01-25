addUnroll: aBuilder fromArity: arity
	aBuilder
		pushTemp: self rolledPointerTempName;
		pushLiteral: arity;
		send: #unrollFromArity:;
		send: #adoptAddress:;
		popTop