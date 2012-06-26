objects from disk
negateBottomRightOffsets

	bottomOffset ifNotNil: [ bottomOffset := bottomOffset negated ].
	rightOffset ifNotNil: [ rightOffset := rightOffset negated ].

