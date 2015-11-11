selectedSelector
	"Try to make a selector out of the current text selection"

	| node |
	node := RBParser parseFaultyExpression: self selection string.
	node
		nodesDo: [ :n | 
			n isMessage
				ifTrue: [ ^ n selector ].
			n isVariable
				ifTrue: [ ^ n name ] ].
	"fall back"
	^ self selection string asSymbol