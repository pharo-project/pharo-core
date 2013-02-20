emitting code
pushAsValue: gen

	"oop is a Character or smallint"
	| asm oop classChar reg proxy notSmi done |
	
	asm := gen asm.
	proxy := gen proxy.

	notSmi := asm uniqueLabelName: 'notSmi'.
	done := asm uniqueLabelName: 'done'.
	
	oop := gen reserveTemp.
	classChar := gen reserveTemp.

	reg := loader emitLoad: gen.
	asm mov: reg to: oop.
	
	reg := proxy isIntegerObject: reg.
	
	asm or: reg with: reg;
		je: notSmi.
	
	asm push: (proxy integerValueOf: oop);
		jmp: done.
	asm label: notSmi.

	reg := proxy classCharacter.
	asm mov: reg to: classChar.

	reg := proxy fetchClassOf: oop.
	asm 
		cmp: reg with: classChar;
		jne: gen failedLabel.

	reg := proxy fetchInteger: 0 ofObject: oop.
	asm push: reg;
	label: done.
	
	gen releaseTemps: 2
