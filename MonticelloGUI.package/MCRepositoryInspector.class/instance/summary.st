as yet unclassified
summary
	^ selectedVersion
		ifNotNil: [selectedVersion summary]
		ifNil: ['']