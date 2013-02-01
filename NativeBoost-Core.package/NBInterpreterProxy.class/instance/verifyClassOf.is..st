helpers
verifyClassOf: oop is: aClass

	asm decorateWith: 'verifyClassOf:is:', aClass name during: [  

	"do a shortcut for compact classes"
	Smalltalk compactClassesArray indexOf: aClass ifAbsent: [ | class |
		class := gen reserveTemp.
		gen proxy fetchClassOf: oop.
		asm mov:  asm EAX to: class.
		gen emitFetchClass: aClass.
		asm cmp: asm EAX with: class;
			jne: gen failedLabel.
		gen releaseTemps: 1.
		^ self
	].

	^ self verifyCompactClassOf: oop is: aClass
	]