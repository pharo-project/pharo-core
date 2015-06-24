selectedMethod: anObject

	selectedMethod := anObject.
	self announcer announce: ( NautilusMethodSelected method: anObject ).
	self ui ifNotNil: [ self ui sourceTextModel announce: NautilusMethodSelected ]