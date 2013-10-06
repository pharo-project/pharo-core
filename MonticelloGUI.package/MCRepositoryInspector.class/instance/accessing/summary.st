summary
	^ selectedVersion
		ifNotNil: [selectedVersion summary]
		ifNil: ['']