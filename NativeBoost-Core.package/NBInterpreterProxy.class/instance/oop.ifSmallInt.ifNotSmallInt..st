helpers
oop: anOop ifSmallInt: aBlock ifNotSmallInt: notSmallIntBlock

	" emit code to check if argument, oop is smallInteger 
	squeak smallints having a least significant bit set"
	| lbl1 lbl2 |
	
	lbl1 := asm uniqueLabelName: 'notSmallInt'.
	asm 
		mov: anOop to: EAX;
		test: AL with: 1;
		je: lbl1.
	aBlock value.
	notSmallIntBlock ifNil: [ asm label: lbl1. ^ self ].
	
	lbl2 := asm uniqueLabelName: 'smallIntTestEnd'.
	asm jmp: lbl2.
	
	asm label: lbl1.
	notSmallIntBlock value.
	asm label: lbl2.
