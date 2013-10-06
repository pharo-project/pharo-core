testOneCanProceedWhenIntroducingClasseVariablesBeginingWithLowerCaseCharacters
	[ 
	Object
		subclass: className
		instanceVariableNames: ''
		classVariableNames: 'a BVariableName'
		poolDictionaries: ''
		category: self class category ]
		on: Exception
		do: [ :ex | ex resume ].
	self assert: (Smalltalk keys includes: className)