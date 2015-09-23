selectedSelector
	"Try to make a selector out of the current text selection"

	| node |
	node := RBParser parseFaultyExpression: self selection string.
	node isMessage
		ifTrue: [ ^ node selector ]
		ifFalse: [ ^ node name ]