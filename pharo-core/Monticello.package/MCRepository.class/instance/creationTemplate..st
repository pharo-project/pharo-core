as yet unclassified
creationTemplate: aString
	self creationTemplate ifNotNil: [ self error: 'Creation template already set for this MCRepository instance.' ].
	
	creationTemplate := aString.