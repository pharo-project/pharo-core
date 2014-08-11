addClassIn: aPackage
	" add a new class in the provided package. A dialog will be opened to let the user set the class definition "

	| classSymbol systemCategory classDefinition |
	classSymbol := #NameOfSubclass.
	systemCategory := aPackage categoryName.
	classDefinition := self class defineClassTemplate 
		format: { classSymbol. systemCategory } .
	classDefinition := UIManager default 
		multiLineRequest: 'Define class definition:'
		initialAnswer: classDefinition
		answerHeight: 250.
	classDefinition isEmptyOrNil 
		ifTrue: [ ^ self ].
	self class evaluate: classDefinition.