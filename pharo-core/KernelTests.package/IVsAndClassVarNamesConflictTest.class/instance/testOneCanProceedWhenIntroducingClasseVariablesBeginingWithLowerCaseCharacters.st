tests
testOneCanProceedWhenIntroducingClasseVariablesBeginingWithLowerCaseCharacters
	self shouldnt: [
		[Object subclass: className
		instanceVariableNames: ''
		classVariableNames: 'a BVariableName'
		poolDictionaries: ''
		category: self class category] on: Exception do: [:ex|	ex resume]
		] raise: Exception.
	self assert: (Smalltalk keys includes: className)
