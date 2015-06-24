selectedCategory: anObject

	selectedCategory := anObject.
	self selectedMethod: nil.
	self announcer announce: ( NautilusProtocolSelected category: anObject ).
	self ui ifNotNil: [ self ui sourceTextModel announce: NautilusProtocolSelected ]