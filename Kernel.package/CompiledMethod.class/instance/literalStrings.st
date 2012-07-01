literals
literalStrings
	| litStrs |
	litStrs := OrderedCollection new: self numLiterals.
	self literalsDo:
		[:lit | 
		(lit isVariableBinding)
			ifTrue: [litStrs addLast: lit key]
			ifFalse: [(lit isSymbol)
				ifTrue: [litStrs addAll: lit keywords]
				ifFalse: [litStrs addLast: lit printString]]].
	^ litStrs