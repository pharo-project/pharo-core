isMultiple
	^ allowsMultipleSelection ifNil: [ allowsMultipleSelection := false ]