newClassNamed: aString subclassOf: aClass instanceVariableNames: ivNamesString classVariableNames:  classVarsString category: category
	| newClass |
	newClass := self class classBuilder
		name: aString 
		inEnvironment: self organization environment
		subclassOf: aClass
		type: aClass typeOfClass
		instanceVariableNames: ivNamesString
		classVariableNames: classVarsString
		poolDictionaries: ''
		category: category asSymbol.
	self createdClasses add: newClass.
	^newClass