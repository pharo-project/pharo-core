nonBodySuccessorSequences

	sequence isEmpty ifTrue: [^ #()].
	^ sequence last nonBodySuccessorSequences