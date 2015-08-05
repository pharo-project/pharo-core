selectedMethod: anObject
	selectedMethod := anObject.
	anObject ifNotNil: [  
	self announcer announce: (NautilusMethodSelected method: anObject).
	self ui ifNotNil: [ self ui sourceTextModel announce: NautilusMethodSelected ] ]