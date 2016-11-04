privateMoveBy: delta
	referencePosition := referencePosition + delta.
	originalCenter := (originalCenter ifNil: [ self center ]) + delta.
	super privateMoveBy: delta