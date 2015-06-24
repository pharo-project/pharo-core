selectedGroup: anObject

	selectedGroup := anObject.
	self announcer announce: ( NautilusGroupSelected group: anObject ).
	self ui ifNotNil: [ self ui sourceTextModel announce: NautilusGroupSelected ]