addTraitIn: aPackage
	" add a new class in the provided package. A dialog will be opened to let the user set the class definition "
	|  systemCategory classDefinition |
	
	systemCategory := aPackage
		ifNil: [ 'Unknown' ].
	classDefinition := self class defineTraitTemplate 
		format: { #TNameOfTrait. '{}'. systemCategory name}.
	classDefinition := UIManager default 
		multiLineRequest: 'Define class definition:'
		initialAnswer: classDefinition
		answerHeight: 250.
	(classDefinition isNil or: [ classDefinition isEmpty ])
		ifTrue: [ ^ self ].
	self class evaluate: classDefinition.