testOpenOnMethod
	| compiledMethod aText |
	compiledMethod := (Object>>#halt).
	nautilus := PackageTreeNautilus openOnMethod: compiledMethod.
	self 
		assert: nautilus selectedPackage package 
			equals: compiledMethod package;
		assert: nautilus selectedClass
			equals: compiledMethod methodClass;
		assert: nautilus selectedMethod 
			equals: compiledMethod.
	aText := nautilus ui sourceCodeContainer submorphs first submorphs first submorphs first getText.
	self 
		assert: aText
		equals: compiledMethod sourceCode