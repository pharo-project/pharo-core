callback entry code
emitArgumentsCoercion
	" input - none,
	output - an arguments array in remmappable oops stack top"
	| args argOop i |
	args := gen reserveTemp.
	argOop := gen reserveTemp.
	
	asm decorateWith:  'emitArgumentsCoercion' during: [
	
		proxy createInstanceOf: Array size: (gen fnSpec arguments size).
		proxy pushRemappableOop: EAX.
	
		i := 0.
		gen fnSpec arguments do: [:arg |
			arg type readOop: (EBP ptr + arg offset) generator: gen.
			asm mov: EAX to: argOop.
			proxy popRemappableOop.
			asm mov: EAX to: args.
			proxy storePointer: i ofObject: args withValue: argOop.
			i := i+1.
			proxy pushRemappableOop: args.
		].

		gen releaseTemps: 2.
	]