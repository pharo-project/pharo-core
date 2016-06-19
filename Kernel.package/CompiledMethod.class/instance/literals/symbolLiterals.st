symbolLiterals

	| col |
	
	col := OrderedCollection new.
	
	self literalsDo: [ :lit | lit isSymbol ifTrue: [ col add: lit ] ].
	
	^ col asArray