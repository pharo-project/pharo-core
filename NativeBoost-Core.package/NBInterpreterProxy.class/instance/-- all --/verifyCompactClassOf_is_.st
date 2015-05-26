verifyCompactClassOf: oop is: aClass
	" fail prim, if oop class not matching the aClas
	output: oop in EAX "
	| index cont fail |

	index := Smalltalk compactClassesArray indexOf: aClass.
	oop = EAX ifFalse: [ asm mov: oop to: EAX ].
	
	cont := asm uniqueLabelName: 'cont'.
	fail := asm uniqueLabelName: 'fail'.
	asm 
	"smallinteger test"	
		test: EAX with: 1;
		jnz: fail;

		mov: EAX ptr to: ECX;
		and: ECX with: objectFormat compactClassMask;
		cmp: ECX with: (index bitShift: objectFormat compactClassIndexShift);
		je: cont.
		asm label: fail.
		gen failWithMessage: 'An instance of ', aClass name , ' expected'.	

	asm label: cont.
	
	