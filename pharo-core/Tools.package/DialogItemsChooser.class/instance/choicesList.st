accessing
choicesList
	choicesList isNil
		ifTrue: [choicesList := OrderedCollection new].
	^choicesList