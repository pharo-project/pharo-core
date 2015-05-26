selectedMethod: anObject

	selectedMethod := anObject.
	self announcer announce: ( NautilusMethodSelected method: anObject )