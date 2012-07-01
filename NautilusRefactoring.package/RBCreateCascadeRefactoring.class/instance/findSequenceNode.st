preconditions
findSequenceNode
	"Find the sequence to be combined."

	sequenceNode := RBParser
		parseExpression: self selectedSource
		onError: [ :msg :pos | self refactoringError: 'Invalid source to rewrite' ].
	(sequenceNode isSequence and: [ sequenceNode statements size > 1 ])
		ifFalse: [ self refactoringError: 'You must select two or more statements' ]