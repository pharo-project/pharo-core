accessing
at: aCompiledMethod
	^ self 
		at: aCompiledMethod
		ifAbsentPut: [ 
			aCompiledMethod parseTree annotateInClass: aCompiledMethod methodClass ]