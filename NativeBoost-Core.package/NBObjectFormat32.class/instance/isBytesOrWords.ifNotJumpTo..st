emitting tests
isBytesOrWords: oop ifNotJumpTo: label
	| gotIt |
	gotIt := asm uniqueLabelName: 'gotit'.
	asm decorateWith: '#isBytesOrWords:ifNotJumpTo:' during: [ 
	asm 
		mov: oop to: EAX;
		test: AL with: 1;
		jne: label;
		mov: EAX ptr to: ECX;
		and: ECX with: self objectFormatMask;
		cmp: ECX with: (self indexableWordsFormat bitShift: self objectFormatShift);
		je: gotIt;
		cmp: ECX with: (self indexableBytesFormat bitShift: self objectFormatShift);
		jl: label;
		label: gotIt
	]