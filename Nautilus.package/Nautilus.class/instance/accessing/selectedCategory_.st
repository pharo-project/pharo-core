selectedCategory: anObject
	selectedCategory := anObject.
	self selectedMethod: nil.
	anObject ifNotNil: [  
	self announcer announce: (NautilusProtocolSelected category: anObject).
	self ui ifNotNil: [ self ui sourceTextModel announce: NautilusProtocolSelected ] ]