verifyClassOf: oop is: aClass generator: gen

	| asm class okLabel |
	asm := gen asm.
	okLabel := asm uniqueLabelName: 'classIsOk'.
	
	class := gen reserveTemp.
	
	gen proxy fetchClassOf: oop.
	asm mov:  asm EAX to: class.
	
	gen emitFetchClass: aClass.
	
	asm cmp: asm EAX with: class;
		je: okLabel.
		gen failWithMessage: 'An instance of ' , aClass name , ' expected'.
	asm label: okLabel.
	
	gen releaseTemps: 1.