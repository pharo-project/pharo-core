insert: anInstructions

	| n |
	self halt.
	n := next.
	next := anInstructions.
	anInstructions do: [:each | each increaseLevel: level ].
	anInstructions last next: n