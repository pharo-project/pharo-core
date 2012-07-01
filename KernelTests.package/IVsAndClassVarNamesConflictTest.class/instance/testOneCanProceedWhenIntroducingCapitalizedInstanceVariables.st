tests
testOneCanProceedWhenIntroducingCapitalizedInstanceVariables
	self shouldnt: [
		[Object subclass: className
		instanceVariableNames: 'X Y'
		classVariableNames: ''
		poolDictionaries: ''
		category: self class category] on: Exception do: [:ex|	ex resume]
		] raise: Exception.
	self assert: (Smalltalk keys includes: className)
